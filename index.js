console.log("A Node futtatja ezt a fájlt!")

const szam = Math.round(Math.random()*100)

console.log(`A véletlen szám: ${szam}`)
if(szam>=50){
    console.log("Gratulálok")
}
else{
    console.log("Sajnálom")
}
szam>=50 ? console.log("Gratulálok") : console.log("Sajnálom!!")


import { diakok } from "./adatok.js"
console.log(`a diákok létszáma: ${diakok.length}`)