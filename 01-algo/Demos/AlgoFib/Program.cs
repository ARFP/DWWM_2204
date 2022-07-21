// See https://aka.ms/new-console-template for more information
Console.WriteLine("FIB, how many numbers ?");

int n = int.Parse(Console.ReadLine());
int position = 2;
string resultat = "0\n1";

long NbPrecedent = 0;
long NbCourant = 1;
long NbSuivant;

if(n > 2)
{
    while(position < n)
    {
        NbSuivant = NbPrecedent + NbCourant;
        resultat += "\n" + NbSuivant.ToString();
        NbPrecedent = NbCourant;
        NbCourant = NbSuivant;
        position++;
    }
}
else
{
    n = 2;
}


Console.WriteLine("Les " + n + " premiers nombres sont " + resultat);