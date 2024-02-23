<?php

namespace App\Console\Commands\Sports\Football;

use App\Traits\Commands\Sports\Football\FootballApiTrait;
use Illuminate\Console\Command;

class FixturesCommand extends Command
{
    use FootballApiTrait;

    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'football:fixtures {days?}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Busca todos os fixtures';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $days = $this->argument('days') ?? null;
        return self::getFixtures($days);
    }
}
