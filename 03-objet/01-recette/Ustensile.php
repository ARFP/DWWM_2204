<?php 

class Ustensile
{
    private string $nom;

    public function __construct(string $sonNom)
    {
        $this->nom = $sonNom;
    }

    public function getNom(): string 
    {
        return $this->nom;
    }
    
} // fin de la classe (rien en dessous /!\)
