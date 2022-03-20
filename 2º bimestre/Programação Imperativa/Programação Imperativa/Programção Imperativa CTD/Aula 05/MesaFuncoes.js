/*Crie uma função que converta polegadas em centímetros. 
Recebe pelo parâmetro polegadas e retorna seu equivalente em centímetros.*/

function converter(a){

return Math.round (a/2.54);

}


console.log(converter(15));

/*Crie uma função que receba uma string e a converta em um URL.*/

function site(nome) {

   return "http://www."+nome+".com.br";

}

console.log(site("dh"));

/*3*/

function string(exc) {

    return exc+"!";
 
 }
 
 console.log(string("Top"));


 /*4*/

 function idadeDog(a) {

    return'A idade do dog é '+a*7;
 
 }
 
 console.log(idadeDog(8));

/*5*/

function salarioMensalhoraTrabalho(salario,horaTrabalhada) {

    return Math.round(salario/horaTrabalhada);

 
 }
 
 console.log(salarioMensalhoraTrabalho(5000,40));

/*6*/

let pesoLeandro = 75
 let pesoWallace = 115
 let pesoAline = 55
 let pesoRafael = 80
 let pesoMaria = 48

 let alturaLeandro = 159
 let alturaWallace = 187
 let alturaAline = 175
 let alturaRafael = 145
 let alturaMaria = 158

function IMC(altura,peso) {

     return 'Seu IMC é'+' '+' '+Math.round(peso/altura*altura);

 }

 
 console.log(IMC(alturaMaria,pesoMaria));
 console.log(IMC(alturaLeandro,pesoLeandro));
 console.log(IMC(alturaWallace,pesoWallace));

 /*7 apoio dos Ceros*/

 function cx (x){
    return x .toUpperCase()
}
console.log (cx ('High'))

 /*8*/



 /*9*/