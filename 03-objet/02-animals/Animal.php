<?php 

class Animal 
{
    protected string $species;

    private string $food;

    public function __construct(string $_species, string $_food)
    {
        $this->species = $_species;
        $this->food = $_food;
        echo 'Animal\'s Constructor for ' . $this->species . PHP_EOL;
    }

    public function Eat(): void
    {
        echo $this->species . ' eats ' . $this->food . PHP_EOL;
    }

    public function Move() : void 
    {
        echo $this->species . ' moves ' . PHP_EOL;
    }
}