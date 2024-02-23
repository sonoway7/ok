<?php

namespace App\Http\Controllers\Api\Sports;

use App\Http\Controllers\Controller;
use App\Models\FootballEvent;
use App\Models\SportBet;
use App\Models\SportBetsOdd;
use App\Models\SportEvent;
use Carbon\Carbon;
use Illuminate\Http\Request;

class FootballEventController extends Controller
{

    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $today = Carbon::today(); // Obtém a data atual

        $query = FootballEvent::query();
        $query->orderByRaw("CASE WHEN league_country = 'Brazil' THEN 0 ELSE 1 END")
              ->orderBy('league_country');

        $query->whereNotNull('bets'); /// não mostra se não tiver odds marketing ainda
        $query->whereNotNull('status_long'); /// Não mostrar registros sem status
        $query->whereNotIn('status_long', [
            'Match Finished',
            'Match Cancelled',
            'Match Abandoned',
            'Technical Loss',
            'WalkOver',
        ]);
        $query->whereDate('date', $today); /// mostra partidas de hoje
        $query->where('finished', 0); /// mostra partidas que não foram finalizadas

        if(!empty($request->category) && $request->category != 'all') {
            $query->where('league_name', $request->category);
        }

        if(!empty($request->searchTerm) && strlen($request->searchTerm) > 3) {
           $query->whereLike(['team_home_name', 'team_away_name', 'referee', 'league_name', 'league_country'], $request->searchTerm);
        }

        if(isset($request->filter) && !empty($request->filter)) {
            if($request->filter == 'finished') {
                $query->where('finished', 1);
            }
        }

        $events = $query->limit(24)->get();
        return response()->json(['events' => $events]);
    }

    /**
     * Next Events
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function nextEvent(Request $request)
    {
        $query = FootballEvent::query();
        $query->orderByRaw("CASE WHEN league_country = 'Brazil' THEN 0 ELSE 1 END")
            ->orderBy('league_country');

        $query->whereDate('date', '>', Carbon::now()); /// mostra partidas de hoje
        $query->where('finished', 0); /// mostra partidas que não foram finalizadas

        if(!empty($request->category) && $request->category != 'all') {
            $query->where('league_name', $request->category);
        }

        if(!empty($request->searchTerm) && strlen($request->searchTerm) > 3) {
            $query->whereLike(['team_home_name', 'team_away_name', 'referee', 'league_name', 'league_country'], $request->searchTerm);
        }

        $events = $query->limit(24)->get();
        return response()->json(['nextevents' => $events]);
    }

    /**
     * Live Event
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function liveEvent(Request $request)
    {
        $today = Carbon::today(); // Obtém a data atual
        $query = FootballEvent::query();

        $query->whereNotNull('bets'); /// não mostra se não tiver odds marketing ainda
        $query->whereNotNull('status_long'); /// Não mostrar registros sem status
        $query->whereIn('status_long', [
            'First Half',
            'Kick Off',
            'Halftime',
            'Second Half',
            '2nd Half Started',
            'Extra Time',
            'Break Time',
            'Penalty In Progress',
            'Match Suspended',
            'Match Interrupted',
            'In Progress',
        ]);

        $query->whereDate('date', $today); /// mostra partidas de hoje
        $events = $query->get();
        return response()->json(['liveevents' => $events]);
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function allEvent(Request $request)
    {
        $today = Carbon::today(); // Obtém a data atual
        $query = FootballEvent::query();

        $query->whereDate('date', '>=', $today); /// mostra partidas de hoje
        $events = $query->latest()->paginate();
        return response()->json(['events' => $events]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function myBets()
    {
        $query = SportBet::query();
        $query->with('sportBetsOdds');

        if(isset($request->searchTerm) && !empty($request->searchTerm) && strlen($request->searchTerm) > 3) {
            $query->whereLike(['type'], $request->searchTerm);
        }

        if(isset($request->filter) && !empty($request->filter)) {
            if($request->filter == 'canceled') {
                $query->where('is_canceled', 'yes');
            }
        }

        $bets = $query->where('user_id', auth('api')->user()->id)->paginate();
        return response()->json(['bets' => $bets]);
    }

    /**
     * Store Single
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse|void
     */
    public function storeSingle(Request $request)
    {
        $sports = $request->all();
        if(!empty($sports['bets']) && count($sports['bets']) > 0) {
            if($this->checkSingle($sports['bets'])) return response()->json(['error' => trans('This is a multiple bet')], 400);

            if(auth('api')->user()->wallet->balance < floatval($sports['total_bets'])) return response()->json(['error' => trans("You don't have enough balance")], 400);

            $saveData = [
                'user_id' => auth('api')->id(),
                'type' => 'single',
                'is_win' => 0,
                'total_bets' => $sports['total_bets'],
                'total_earnings' => $sports['total_earnings'],
            ];

            if($sportbet = SportBet::create($saveData)) {
                foreach($sports['bets'] as $sport) {
                    $event = FootballEvent::where('fixture_id', $sport['id'])->first();

                    if(!empty($event)) {
                        $dataDoBanco = Carbon::parse($event->date);
                        $dataAtual = Carbon::now();

                        if ($dataDoBanco->lessThan($dataAtual)) {
                            $data = $this->prepareData($sportbet->id, $sport);

                            SportBetsOdd::create($data);
                        } else {
                            return response()->json(['error' => trans('The date of this event is no longer valid')], 400);
                        }
                    }else{
                        return response()->json(['error' => trans('Selected event does not exist')], 400);
                    }
                }

                auth('api')->user()->wallet->decrement('balance', floatval($sports['total_bets']));
                return response()->json(['message' => trans('Bet created successfully')]);
            }
        }else{
            return response()->json(['error' => trans('You need to select bets')], 400);
        }
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse|void
     */
    public function storeMultiple(Request $request)
    {
        $sports = $request->all();
        if(!empty($sports['bets']) && count($sports['bets']) > 0) {
            if(!$this->checkSingle($sports['bets'])) return response()->json(['error' => trans('This is a single bet')], 400);

            if(auth('api')->user()->wallet->balance < floatval($sports['total_bets'])) return response()->json(['error' => trans("You don't have enough balance")], 400);

            $saveData = [
                'user_id' => auth('api')->id(),
                'type' => 'multiple',
                'is_win' => 0,
                'total_bets' => $sports['total_bets'],
                'total_earnings' => $sports['total_earnings'],
            ];

            if($sportbet = SportBet::create($saveData)) {
                foreach($sports['bets'] as $sport) {
                    $event = FootballEvent::where('fixture_id', $sport['id'])->first();
                    if(!empty($event)) {
                        $dataDoBanco = Carbon::parse($event->date);
                        $dataAtual = Carbon::now();
                        if ($dataDoBanco->lessThan($dataAtual)) {
                            $data = $this->prepareData($sportbet->id, $sport);

                            SportBetsOdd::create($data);
                        }else {
                            return response()->json(['error' => trans('The date of this event is no longer valid')], 400);
                        }
                    }else{
                        return response()->json(['error' => trans('Selected event does not exist')], 400);
                    }
                }

                auth('api')->user()->wallet->decrement('balance', floatval($sports['total_bets']));
                return response()->json(['message' => trans('Bet created successfully')]);
            }


        }else{
            return response()->json(['error' => trans('You need to select bets')], 400);
        }
    }

    /**
     * @param $bets
     * @return bool
     */
    private function checkSingle($bets)
    {
        return collect($bets)->pluck('id')->unique()->count() !== 1;
    }

    /**
     * Prepare Data
     *
     * @param $id
     * @param $data
     * @return array
     */
    private function prepareData($id, $data)
    {
        return [
            'sport_bet_id' => $id,
            'bet_id' => $data['id'],
            'bet_odd_id' => $data['bet_id'],
            'date' => Carbon::parse($data['date'])->format('Y-m-d H:i:s'),
            'status_long' => $data['status_long'],
            'team_home_name' => $data['team_home_name'],
            'team_away_name' => $data['team_away_name'],
            'odds_id' => $data['bets']['id'],
            'odds_name' => $data['bets']['name'],
            'odds_value' => $data['oddsSelected']['value'],
            'odds_odd' => $data['oddsSelected']['odd'],
            'bet_amount' => $data['bet_amount'],
        ];
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $event = FootballEvent::find($id);
        return response()->json(['event' => $event]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
