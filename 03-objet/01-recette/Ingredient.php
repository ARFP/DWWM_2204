<?php 

/**
 * La classe ingrédient réprésente un ingrédient d'une recette
 */
class Ingredient 
{
    /** @var string $nom Le nom de l'ingrédient */
    private string $nom;

    /** @var float $quantite Ma quantité de l'ingrédient dans la recette */7
    private float $quantite;

    /** @var string $uniteDeMesure l'unité de mesure utilisée pour la quantité
     * $unite_de_mesure
      */
    private string $uniteDeMesure;

    /** @var Ustensile[] $ustensiles les ustensiles nécessaires pour manipuler l'ingrédient */
    private array $ustensiles;


    public function __construct(string $nom)
    {
        $this->setNom($nom);
        $this->quantite = 0;
        $this->uniteDeMesure = "G";
    }

    public function getNom(): string
    {
        return $this->nom;
    }

    /**
     * Définit un nouveau nom pour l'ingrédient
     * Le nom doit respecter les conditions suivantes ;
     * 2 caractères minimum, uniqueent lettres, chiffres et tiret (-)
     * @param string $nouveauNom Le nouveau nom de l'ingrédient 
     * @throws Exception Le format du nouveauNom est incorrect
     */
    public function setNom(string $nouveauNom): void
    {
        if(mb_strlen($nouveauNom) >= 2) {
            $this->nom = $nouveauNom;
        } else {
            throw new Exception('Le nouveau nom est invalide !');
        }        
    }

    public function copyTo(Ingredient $autreIngredient): void
    {
        $autreIngredient->nom = $this->nom;
        //$autreIngredient->setNom($this->getNom());
    }


} // fin de la classe (rien en dessous /!\)
