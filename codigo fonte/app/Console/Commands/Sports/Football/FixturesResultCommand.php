<?php

namespace App\Console\Commands\Sports\Football;

use App\Traits\Commands\Sports\Football\FootballApiTrait;
use Illuminate\Console\Command;

class FixturesResultCommand extends Command
{
    use FootballApiTrait;

    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'football:statistics';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Resultado dos jogos';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        return self::getFixtureStatistics();
    }
}
