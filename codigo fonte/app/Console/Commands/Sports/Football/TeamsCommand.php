<?php

namespace App\Console\Commands\Sports\Football;

use App\Traits\Commands\Sports\Football\FootballApiTrait;
use Illuminate\Console\Command;

class TeamsCommand extends Command
{
    use FootballApiTrait;

    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'football:teams';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        return self::getTeam();
    }
}
