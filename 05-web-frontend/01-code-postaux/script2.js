
class CodePostaux 
{
    constructor()
    {
        this.url = "zipcodes.json";
        this.json = [];
        this.resultats = [];
    }

    async telechargerJson()
    {
        let response = await fetch(this.url);
        this.json = await response.json();
        console.log(this.json);
    }

    rechercherParCodePostal(valeurARechercher)
    {
        for(let ville of this.json)
        {
            if(valeurARechercher === ville.codePostal) {
                this.resultats.push(ville);
            }
        }

        this.json.forEach((ville) => {
            if(valeurARechercher === ville.codePostal) {

            }
        })
    }

    rechercherParNom()
    {

    }

} // fin classe


var monObjet = new CodePostaux();

await monObjet.telechargerJson();

const btn = document.getElementById("btnValid");
const input = document.getElementById("toto");

btn.addEventListener("click", function() {
    monObjet.rechercherParCodePostal(input.value);
});