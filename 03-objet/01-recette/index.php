<?php 
/*
require 'chemin/vers/le/fichier.php';
require_once 'chemin/vers/le/fichier.php';
include 'chemin/vers/le/fichier.php';
include_once 'chemin/vers/le/fichier.php';
*/
require 'Ingredient.php';

$farine = new Ingredient('Farine');
echo $farine->getNom() . PHP_EOL;

$farine->setNom('Farine T55');
echo $farine->getNom() . PHP_EOL; // Farine T55

$farine2 = new Ingredient('Farine2');
$farine->copyTo($farine2);
echo $farine2->getNom(); // Farine T55
