<?php 
declare(strict_types=1);
/*
EXERCICES 3.C 
Créer une fonction getFullName() 
acceptant 2 arguments (nom et prénom) de type string 
La fonction retourne la concaténation des 2 valeurs séparées par un espace.
Prénom en minuscule / Nom en majuscule
*/

function getFullName(string $nom, string $prenom)
{
    return mb_strtolower($prenom) . ' ' . mb_strtoupper($nom);
}

echo getFullName('23', 'true');


