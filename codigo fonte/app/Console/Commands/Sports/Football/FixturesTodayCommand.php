<?php

namespace App\Console\Commands\Sports\Football;

use App\Traits\Commands\Sports\Football\FootballApiTrait;
use Illuminate\Console\Command;

class FixturesTodayCommand extends Command
{
    use FootballApiTrait;

    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'football:fixtures-today';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Atualizar todos os fixtures';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        return self::updateFixtureToday();
    }
}
