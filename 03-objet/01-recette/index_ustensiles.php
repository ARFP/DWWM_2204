<?php 

require './Ustensile.php';

$cuillere = new Ustensile('Cuillère');
$fouet = new Ustensile('Fouet');

echo $cuillere->getNom() . PHP_EOL;

echo $fouet->getNom() . PHP_EOL;