<?php 

require './Animal.php';
require './Bee.php';
//require './Dog.php';
/*
$animal = new Animal("Dog", "DogFood");
$animal2 = new Animal("Cat", "Mouse");
$animal->Eat();
$animal2->Eat();*/

$bee = new Bee();

$bee->Move();