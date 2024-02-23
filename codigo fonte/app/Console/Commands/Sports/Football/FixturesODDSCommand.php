<?php

namespace App\Console\Commands\Sports\Football;

use App\Traits\Commands\Sports\Football\FootballApiTrait;
use Illuminate\Console\Command;

class FixturesODDSCommand extends Command
{
    use FootballApiTrait;

    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'football:odds';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Atualiza todos os odds';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        self::updateOddsEvents();
    }
}
