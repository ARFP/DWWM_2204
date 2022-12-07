/*
// VERSIO XMLHTTPREQUEST (ancienne méthode)
var xhr = new XMLHttpRequest();
xhr.open('GET', './zipcodes.json', true);
xhr.responseType = 'json';
xhr.onload = function() {
    console.log(xhr.response);
}
xhr.send();

// VERSION avec FETCH et THEN
fetch("zipcodes.json")
.then(response => { return response.json() })
.then(json => { console.log(json) } )
.catch(erreur => { console.error(erreur) })

*/

// VERSION AVEC FETCH et AWAIT
try {
 
    let response = await fetch("zipcodes.json");
    var json = await response.json();
    console.log(json);
    console.log("toto");


} catch(erreur) {
    console.error(erreur);
}


// EVENEMENT CLICK SUR VALIDER
const btn = document.getElementById("btnValid");
const input = document.getElementById("toto");

btn.addEventListener("click", function()
{
    console.log(input.value);
    let valeurAChercher = input.value;

   for(let i = 0; i < json.length; i++) {
    let ville = json[i];

    /**
     * Recherher toutes les villes dont le nom contient "valeurARechercher"
     */
    if(valeurAChercher === ville.codePostal) {
        console.log(ville.nomCommune + " " + ville.codePostal);
    }
   }

   for(let ville of json) {

   }

})