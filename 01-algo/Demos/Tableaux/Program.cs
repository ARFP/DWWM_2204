// See https://aka.ms/new-console-template for more information
Console.WriteLine("Hello, World!");
/*
int variable = 1;
int[] tableau;
tableau = new int[10];
tableau[4] = 1337; 
tableau[7] = 42;
int emplacement4 = tableau[4];
emplacement4 = 1111;
Console.WriteLine(tableau[4]);
*/



string[] pays;

pays = new string[]
{
    "France", // 0
    "Allemagne", // 1
    "Maroc", // 2
    "Belgique" // 3
};

string[] resultat = new string[pays.Length-1];

int j = 0;
for (int i = 0; i < pays.Length; i++)
{
    if(pays[i] != "Allemagne")
    {
        resultat[j] = pays[i];
        j++;
    }
    Console.WriteLine(i + " = " + pays[i]);
    
}

Console.ReadLine();
// tableau de 3 emplacements sans allemange