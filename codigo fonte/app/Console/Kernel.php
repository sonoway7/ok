<?php

namespace App\Console;

use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;

class Kernel extends ConsoleKernel
{
    /**
     * Define the application's command schedule.
     */
    protected function schedule(Schedule $schedule): void
    {
        // Football
        $schedule->command('football:leagues')->monthly(); /// verificar as ligas a cada mês
        $schedule->command('football:fixtures')->daily(); /// carrega os eventos
        $schedule->command('football:fixtures 1')->daily(); /// carrega os eventos
        $schedule->command('football:fixtures 2')->daily(); /// carrega os eventos
        $schedule->command('football:odds')->everyTenMinutes(); /// atualiza os odds
        $schedule->command('football:fixtures-today')->everyTenMinutes(); /// atualiza os odds
        $schedule->command('football:odds-today')->everyMinute(); /// atualiza os odds a cada minuto
        $schedule->command('football:statistics')->hourly(); /// atualiza as statistics a cada hora
    }

    /**
     * Register the commands for the application.
     */
    protected function commands(): void
    {
        $this->load(__DIR__.'/Commands');

        require base_path('routes/console.php');
    }
}
