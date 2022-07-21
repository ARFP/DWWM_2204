<?php 


class Bee extends Animal 
{

    public function __construct()
    {
        parent::__construct("Bee", "Nectar");
    }

    public function Move() : void 
    {
        echo $this->species . ' flies ' . PHP_EOL;
    }
  
}

