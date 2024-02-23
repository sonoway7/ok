<?php

namespace App\Traits\Commands\Sports\Football;
use App\Events\SportFixtureEvent;
use App\Models\FootballEvent;
use App\Models\FootballLeague;
use App\Models\FootballTeam;
use App\Models\FootballVenue;
use Carbon\Carbon;
use GuzzleHttp\Promise\PromiseInterface;
use Illuminate\Http\Client\RequestException;
use Illuminate\Http\Client\Response;
use Illuminate\Support\Facades\Http;
use GuzzleHttp\Client;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

trait FootballApiTrait
{
    protected static string $endpoint = 'https://v3.football.api-sports.io';
    protected static string $apiKey = '5db4063b29f77a538a6963b367995c16';

    /**
     * Get Headers
     * @return array
     */
    private static function getHeaders(): array
    {
        return [
            'x-rapidapi-host' => 'v3.football.api-sports.io',
            'x-rapidapi-key' => self::$apiKey
        ];
    }

    /**
     * Get HTTP
     *
     * @param string $uri
     * @return array|PromiseInterface|Response|mixed
     * @throws RequestException
     */
    private static function getHttp(string $uri): mixed
    {
        $response = Http::withHeaders(self::getHeaders())->get(self::$endpoint.'/'.$uri);

        if($response->successful()) {
            return $response->json();
        }

        return $response->throw();
    }

    /**
     * Get Leagues
     *
     * @return string
     * @throws RequestException
     * @throws \GuzzleHttp\Exception\GuzzleException
     */
    public static function getLeagues()
    {
        $response = self::getHttp('/leagues');

        if($response['response'] > 0 && is_array($response['response'])) {
            $leagues = $response['response'];

            foreach($leagues as $leagueData) {
                $league     = $leagueData['league'];
                $country    = $leagueData['country'];
                $seasons    = $leagueData['seasons'];

                foreach($seasons as $season) {
                    if($season['year'] >= Carbon::now()->year) {
                        if($season['coverage']['odds']) {
                            $datas = [
                                'league_id'     => $league['id'],
                                'name'          => $league['name'],
                                'type'          => $league['type'],
                                'logo'          => self::uploadFromUrl($league['logo'], Str::slug($country['name'].'-'.$league['name'])),

                                'country'       => $country['name'],
                                'country_code'  => $country['code'],
                                'country_flag'  => self::getNameFile($country['flag']),

                                'season_year'   => $season['year'],
                                'season_start'  => $season['start'],
                                'season_end'    => $season['end'],
                                'standings'     => $season['coverage']['standings'],
                                'players'       => $season['coverage']['players'],
                                'top_scorers'   => $season['coverage']['top_scorers'],
                                'top_assists'   => $season['coverage']['top_assists'],
                                'top_cards'     => $season['coverage']['top_cards'],
                                'injuries'      => $season['coverage']['injuries'],
                                'predictions'   => $season['coverage']['predictions'],
                                'odds'          => $season['coverage']['odds'],
                            ];

                            $football = FootballLeague::where('league_id', $league['id'])->where('name', $league['name'])->first();
                            if(empty($football)) {
                                FootballLeague::create($datas);
                            }else{
                                //$football->update(['status' => ]);
                            }

                           return "leagues criada com sucesso \n";
                        }
                    }
                }
            }
        }
    }

    /**
     * Get Fixtures
     * Atualiza os eventos de partidas
     *
     * @param string $eventDay
     * @return string
     * @throws RequestException
     */
    public static function getFixtures($eventDay)
    {
        if(empty($eventDay)) {
            $eventDay = Carbon::now()->format('Y-m-d');
        }else{
            $eventDay = Carbon::now()->addDays($eventDay)->format('Y-m-d');
        }

        $startTime = microtime(true);

        $response = self::getHttp('/fixtures?date='.$eventDay);
        if ($response['response'] > 0 && is_array($response['response'])) {
            foreach ($response['response'] as $fixture) {
                self::prepareFixtureData($fixture);
            }
        }

        $endTime = microtime(true); // Registra o tempo de término da execução
        $executionTime = $endTime - $startTime; // Calcula o tempo total de execução

        $minutes = floor($executionTime / 60);
        $seconds = $executionTime % 60;

        echo "Tempo total de execução: " . $minutes . " minutos e " . $seconds . " segundos\n";
    }

    /**
     * @param $fixture
     * @return string|void
     */
    private static function prepareFixtureData($fixture)
    {
        if (isset($fixture['fixture']['id']) && !empty($fixture['fixture']['id'])) {

            $events = [
                'fixture_id' => $fixture['fixture']['id'],
                'referee' => $fixture['fixture']['referee'],
                'period_first' => $fixture['fixture']['periods']['first'],
                'period_second' => $fixture['fixture']['periods']['second'],

                'team_home_id' => $fixture['teams']['home']['id'],
                'team_home_name' => $fixture['teams']['home']['name'],
                'team_home_logo' => Str::slug($fixture['teams']['home']['name']).'.png',
                'team_home_winner' => $fixture['teams']['home']['winner'],

                'team_away_id' => $fixture['teams']['away']['id'],
                'team_away_name' => $fixture['teams']['away']['name'],
                'team_away_logo' => Str::slug($fixture['teams']['away']['name']).'.png',
                'team_away_winner' => $fixture['teams']['away']['winner'],

                'status' => $fixture['fixture']['status']['short'],
                'status_long' => $fixture['fixture']['status']['long'],
            ];

            if (isset($fixture['fixture']['venue']['id']) && !empty($fixture['fixture']['venue']['id'])) {
                $events['venue_id'] = $fixture['fixture']['venue']['id'];
                $events['venue_name'] = $fixture['fixture']['venue']['name'];
                $events['venue_city'] = $fixture['fixture']['venue']['city'];
            }

            if (isset($fixture['league']['id']) && !empty($fixture['league']['id'])) {
                $events['league_id'] = $fixture['league']['id'];
                $events['league_name'] = $fixture['league']['name'];
                $events['league_country'] = $fixture['league']['country'];

                $events['league_logo'] = Str::slug($fixture['league']['country'].'-'.$fixture['league']['name']).'.png';
                $events['league_flag'] = self::getNameFile($fixture['league']['flag']);
                $events['league_season'] = $fixture['league']['season'];
                $events['league_round'] = $fixture['league']['round'];
            }

            $events['goals_home'] = $fixture['goals']['home'];
            $events['goals_away'] = $fixture['goals']['away'];
            $events['score_halftime_home'] = $fixture['score']['halftime']['home'];
            $events['score_halftime_away'] = $fixture['score']['halftime']['away'];
            $events['score_extratime_home'] = $fixture['score']['extratime']['home'];
            $events['score_extratime_away'] = $fixture['score']['extratime']['away'];
            $events['score_penalty_home'] = $fixture['score']['penalty']['home'];
            $events['score_penalty_away'] = $fixture['score']['penalty']['away'];

            if (isset($fixture['league']['country']) && $fixture['league']['country'] == 'Brazil') {
                $dataHoraBrasil = Carbon::parse($fixture['fixture']['date'])->setTimezone('America/Sao_Paulo');
                //$events['date'] = $dataHoraBrasil->format('Y-m-d H:i:s');
                $events['date'] = $dataHoraBrasil;
            }else{
                $dataHoraUTC = Carbon::parse($fixture['fixture']['date'])->setTimezone($fixture['fixture']['timezone']);
                $events['date'] = $dataHoraUTC;
            }

            if($fixture['teams']['home']['winner'] || $fixture['teams']['away']['winner']) {
                $events['finished'] = 1;
            }

            $checkEventExist = FootballEvent::where('fixture_id', $events['fixture_id'])->first();
            if (empty($checkEventExist)) {
                FootballEvent::create($events);
                echo "evento criado com sucesso \n";
            }else{
                /// ATUALIZAÇÂO //////////////////////////////////////////////////////////////////////

                $dataupdate = [
                    'team_home_winner'  => $fixture['teams']['home']['winner'],
                    'team_away_winner'  => $fixture['teams']['away']['winner'],
                    'status'            => $fixture['fixture']['status']['short'],
                    'status_long'       => $fixture['fixture']['status']['long'],
                ];

                if($fixture['teams']['home']['winner'] || $fixture['teams']['away']['winner']) {
                    $dataupdate['finished'] = 1;
                }

                $dataupdate['goals_home']           = $fixture['goals']['home'];
                $dataupdate['goals_away']           = $fixture['goals']['away'];
                $dataupdate['score_halftime_home']  = $fixture['score']['halftime']['home'];
                $dataupdate['score_halftime_away']  = $fixture['score']['halftime']['away'];
                $dataupdate['score_extratime_home'] = $fixture['score']['extratime']['home'];
                $dataupdate['score_extratime_away'] = $fixture['score']['extratime']['away'];
                $dataupdate['score_penalty_home']   = $fixture['score']['penalty']['home'];
                $dataupdate['score_penalty_away']   = $fixture['score']['penalty']['away'];

                /// update
                $checkEventExist->update($dataupdate);

                /// add o evento no websockets


                /// notificação
                return true;
            }
            return false;
        }
        return false;
    }


    /**
     * @return void
     * @throws RequestException
     */
    public static function updateFixtureToday()
    {
        $startTime = microtime(true);

        $events = FootballEvent::whereDate('date', '>=', \Carbon\Carbon::today())
            ->where('finished', 0)
            ->limit(20)
            ->get();

        $eventIds = $events->pluck('fixture_id');
        $idsString = $eventIds->implode('-');

        $response = self::getHttp('/fixtures?ids='.$idsString);
        if ($response['response'] > 0 && is_array($response['response'])) {
            foreach ($response['response'] as $fixture) {
                if (!empty($fixture['fixture']['id'])) {

                    $fixtureEvent =  FootballEvent::where('fixture_id', $fixture['fixture']['id'])->first();

                    $datas = [];

                    if($fixtureEvent->goals_home != $fixture['goals']['home'] || $fixtureEvent->goals_away != $fixture['goals']['away']) {
                        $datas['goals_home']            = $fixture['goals']['home'];
                        $datas['goals_away']            = $fixture['goals']['away'];

                        event(new SportFixtureEvent($fixtureEvent, $datas, 'goals'));
                    }


                    $datas['score_halftime_home']   = $fixture['score']['halftime']['home'];
                    $datas['score_halftime_away']   = $fixture['score']['halftime']['away'];
                    $datas['score_extratime_home']  = $fixture['score']['extratime']['home'];
                    $datas['score_extratime_away']  = $fixture['score']['extratime']['away'];
                    $datas['score_penalty_home']    = $fixture['score']['penalty']['home'];
                    $datas['score_penalty_away']    = $fixture['score']['penalty']['away'];


                    if($fixtureEvent->status_long != $fixture['fixture']['status']['long']) {
                        $datas['status']            = $fixture['fixture']['status']['short'];
                        $datas['status_long']       = $fixture['fixture']['status']['long'];

                        event(new SportFixtureEvent($fixtureEvent, $datas, 'status'));
                    }

                    FootballEvent::where('fixture_id', $fixture['fixture']['id'])->update($datas);
                    echo "evento atualizado com sucesso \n";
                }
            }
        }

        /// contador de tempo ////////////////////////////////////////////////////////////////
        $endTime = microtime(true); // Registra o tempo de término da execução
        $executionTime = $endTime - $startTime; // Calcula o tempo total de execução

        $minutes = floor($executionTime / 60);
        $seconds = $executionTime % 60;

        echo "Tempo total de execução: " . $minutes . " minutos e " . $seconds . " segundos\n";
    }

    /**
     * Get Name File
     * @param $url
     * @return mixed|null
     */
    private static function getNameFile($url)
    {
        try {
            $parsedUrl = parse_url($url);
            $pathInfo = pathinfo($parsedUrl['path']);
            $fileName  = $name ?? $pathInfo['filename'] ;
            return $fileName;
        } catch (\Exception $e) {
            return null;
        }
    }

    /**
     * Update Odds Events
     * Atualiza o odds da partida
     *
     * @return void
     * @throws RequestException
     */
    public static function updateOddsEvents()
    {
        $startTime = microtime(true);

        /// Events
        $addMonth = Carbon::now()->addMonth();
        $events = FootballEvent::whereDate('date', '<=', $addMonth)
            ->whereDate('date', '>=', Carbon::now())
            ->where('finished', 0)
            ->get();

        foreach($events as $event) {
            $response = self::getHttp('/odds?league='.$event->league_id.'&fixture='.$event->fixture_id.'&season='.Carbon::parse($event->date)->year.'&bookmaker=6');
            if(is_array($response['response']) && count($response['response']) > 0) {
                foreach($response['response'] as $response) {

                    $bets  = $response['bookmakers'][0]['bets'];
                    if(count($bets) > 0) {
                        $index = 0;

                        $result = array_filter($bets, function ($valueArray) {
                            return $valueArray['name'] === 'Match Winner';
                        });

                        if(count($result) > 0) {
                            $index = array_key_first($result);
                        }else{
                            $result = array_filter($bets, function ($valueArray) {
                                return $valueArray['name'] === '1x2 (1st Half)';
                            });

                            if(count($result) > 0) {
                                $index = array_key_first($result);
                            }else{
                                $result = array_filter($bets, function ($valueArray) {
                                    return $valueArray['name'] === 'Fulltime Result';
                                });

                                $index = array_key_first($result);
                            }
                        }

                        $databet = [
                            'bets' => json_encode($bets)
                        ];

                        if(isset($bets[$index]['values'][0]['odd']) && isset($bets[$index]['values'][2]['odd'])) {
                            $databet['odds_home'] = $bets[$index]['values'][0]['odd'];
                            $databet['odds_draw'] = $bets[$index]['values'][1]['odd'];
                            $databet['odds_away'] = $bets[$index]['values'][2]['odd'];
                        }

                        $event->update($databet);
                        echo "evento atualizado com sucesso \n";
                    }
                }
            }
        }

        /// contador de tempo ////////////////////////////////////////////////////////////////
        $endTime = microtime(true); // Registra o tempo de término da execução
        $executionTime = $endTime - $startTime; // Calcula o tempo total de execução

        $minutes = floor($executionTime / 60);
        $seconds = $executionTime % 60;

        echo "Tempo total de execução: " . $minutes . " minutos e " . $seconds . " segundos\n";
    }

    /**
     * Get Fixture Results
     * @return void
     */
    public static function getFixtureStatistics()
    {
        $startTime = microtime(true);

        $oneYearAgo = Carbon::now()->subYear();
        $events = FootballEvent::whereDate('date', '>=', $oneYearAgo)
            ->whereDate('date', '<=', Carbon::now())
            ->where('finished', 1)
            ->get();

        if(count($events) > 0) {
            foreach($events as $event) {
                $fixture = self::getFixtureStatisticsById($event->fixture_id);
                if(!empty($fixture)) {
                    foreach($fixture as $f) {
                        $dataSave = [];
                        if($f['team']['id'] === $event->team_home_id) {
                            $dataSave['team_home_statistics'] = json_encode($f['statistics']);
                        }
                        if($f['team']['id'] === $event->team_away_id) {
                            $dataSave['team_away_statistics'] = json_encode($f['statistics']);
                        }

                        $event->update($dataSave);
                        echo "evento e suas estatisticas atualizada com sucesso \n";
                    }
                }
            }
        }

        /// contador de tempo ////////////////////////////////////////////////////////////////
        $endTime = microtime(true); // Registra o tempo de término da execução
        $executionTime = $endTime - $startTime; // Calcula o tempo total de execução

        $minutes = floor($executionTime / 60);
        $seconds = $executionTime % 60;

        echo "Tempo total de execução: " . $minutes . " minutos e " . $seconds . " segundos\n";
    }

    /**
     * @param $id
     * @return array
     * @throws RequestException
     */
    public static function getFixtureStatisticsById($fixtureId)
    {
        $response = self::getHttp('/fixtures/statistics?fixture='.$fixtureId);
        if (count($response['response']) > 0 && is_array($response['response'])) {
            return $response['response'];
        }

        return null;
    }

    /**
     * @param $id
     * @return void
     * @throws RequestException
     */
    public static function getFixtureById($id)
    {
        $response = self::getHttp('/fixtures?id='.$id);
        if (count($response['response']) > 0 && is_array($response['response'])) {
            return $response['response'][0];
        }

        return null;
    }

    /**
     * @return void
     * @throws RequestException
     */
    public static function updateOddsEventsToday()
    {
        $startTime = microtime(true);

        $oddsToday = [];

        /// Events
        $response = self::getHttp('/odds/live');

        if(is_array($response['response']) && count($response['response']) > 0) {
            $oddsToday = $response['response'];
        }

        if(count($oddsToday) > 0) {
            foreach($oddsToday as $odd) {
                $footballEvent = FootballEvent::where('fixture_id', $odd['fixture']['id'])->first();
                if(!empty($footballEvent)) {

                    $databet = [
                        'goals_home'    => $odd['teams']['home']['goals'],
                        'goals_away'    => $odd['teams']['away']['goals'],
                        'status_long'   => $odd['fixture']['status']['long'],
                        'bets'          => json_encode($odd['odds']),
                    ];

                    $footballEvent->update($databet);
                }else{
                    $fixture = self::getFixtureById($odd['fixture']['id']);
                    if(!empty($fixture)) {
                        self::prepareFixtureData($fixture);
                        echo "Novo evento criado \n";
                    }
                }
            }
        }


        /// contador de tempo ////////////////////////////////////////////////////////////////
        $endTime = microtime(true); // Registra o tempo de término da execução
        $executionTime = $endTime - $startTime; // Calcula o tempo total de execução

        $minutes = floor($executionTime / 60);
        $seconds = $executionTime % 60;

        echo "Tempo total de execução: " . $minutes . " minutos e " . $seconds . " segundos\n";
    }

    /**
     * @param $url
     * @return string|null
     * @throws \GuzzleHttp\Exception\GuzzleException
     */
    private static function uploadFromUrl($url, $name = null)
    {
        try {
            $client = new \GuzzleHttp\Client();
            $response = $client->get($url);

            if ($response->getStatusCode() === 200) {
                $fileContent = $response->getBody();

                // Extrai o nome do arquivo e a extensão da URL
                $parsedUrl = parse_url($url);
                $pathInfo = pathinfo($parsedUrl['path']);
                //$fileName = $pathInfo['filename'] ?? 'file_' . time(); // Nome do arquivo
                $fileName  = $name ?? $pathInfo['filename'] ;
                $extension = $pathInfo['extension'] ?? 'png'; // Extensão do arquivo

                // Monta o nome do arquivo com o prefixo e a extensão
                $fileName = 'football/fixtures/'.$fileName . '.' . $extension;

                // Salva o arquivo usando o nome extraído da URL
                Storage::disk('public')->put($fileName, $fileContent);

                return $fileName;
            }

            return null;
        } catch (\Exception $e) {
            return null;
        }
    }

}
