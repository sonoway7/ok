<?php

namespace App\Livewire;

use App\Models\AffiliateHistory;
use App\Models\User;
use App\Models\Wallet;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class AdminWidgets extends BaseWidget
{
    protected static ?int $navigationSort = -2;

    /**
     * @return array|Stat[]
     */
    protected function getCards(): array
    {
        if(auth()->check()) {
           $inviterId = auth()->user()->id;
           $usersIds = User::where('inviter', $inviterId)->get()->pluck('id');

           if(!empty($usersIds)) {
               $comissaoTotal      = Wallet::whereIn('user_id', $usersIds)->sum('refer_rewards');
               $comissaoRevshare   = AffiliateHistory::whereIn('user_id', $usersIds)->where('commission_type', 'revshare')->sum('commission_paid');
               $comissaoCPAs       = AffiliateHistory::whereIn('user_id', $usersIds)->where('commission_type', 'cpa')->where('status', 1)->sum('commission_paid');
           }
        }else{
            $comissaoTotal      = 0;
            $comissaoRevshare   = 0;
            $comissaoCPAs       = 0;
        }

        return [
            Stat::make('Comissão', \Helper::amountFormatDecimal($comissaoTotal))
                ->description('Comissão ganhos do afiliado')
                ->descriptionIcon('heroicon-m-arrow-trending-up')
                ->color('success'),
            Stat::make('Comissão CPA', \Helper::amountFormatDecimal($comissaoCPAs))
                ->description('Comissão Cpa')
                ->descriptionIcon('heroicon-m-arrow-trending-up')
                ->color('success'),
            Stat::make('Comissão Revshare', \Helper::amountFormatDecimal($comissaoRevshare))
                ->description('Comissão revshare')
                ->descriptionIcon('heroicon-m-arrow-trending-up')
                ->color('success'),
        ];
    }

    /**
     * @return bool
     */
    public static function canView(): bool
    {
        return auth()->user()->hasRole('afiliado');
    }
}
