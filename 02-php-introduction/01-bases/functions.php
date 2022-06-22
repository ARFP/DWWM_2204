<?php 

function afficherDateDuJour() 
{
    $date = new DateTime();
    echo $date->format('d/m/Y H:i:s u') . PHP_EOL;
}

//afficherDateDuJour();


function afficherDate($date_fournie)
{
    $date = new DateTime($date_fournie);
    echo $date->format('d/m/Y H:i:s u') . PHP_EOL;
}

afficherDate('2022-01-01');


echo date('d/m/Y H:i:s u');