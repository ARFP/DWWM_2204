// See https://aka.ms/new-console-template for more information
Console.WriteLine("Exercice 3.2 : Contrôle de saisie avec limite.");
Console.WriteLine();

/* DEBUT PROGRAMME */

/* VARIABLES */

string mot_de_passe_enregiste = "formation";
string mot_de_passe_saisi;
bool mot_de_passe_correct = false;
byte nombre_essais = 3;

do
{
    Console.WriteLine("Veuillez saisir votre mot de passe : ");
    mot_de_passe_saisi = Console.ReadLine();
    mot_de_passe_correct = (mot_de_passe_saisi == mot_de_passe_enregiste);
    if (!mot_de_passe_correct)
    {
        nombre_essais--;
    }
} while (!mot_de_passe_correct && nombre_essais > 0);

if (mot_de_passe_correct)
{
    Console.WriteLine("Vous êtes connecté.");
}
else
{
    Console.WriteLine("Compte bloqué");
}

/* FIN PROGRAMME */

Console.WriteLine("Appuyez sur n'importe quelle touche pour quitter.");
Console.ReadLine();

// See https://aka.ms/new-console-template for more information
Console.WriteLine("Exercice 3.2 : Contrôle de saisie avec limite.");
Console.WriteLine();

/* DEBUT PROGRAMME */

/* VARIABLES */