// 1.

let numbers =[22, 33, 54, 66, 72]
console.log(numbers[numbers.length])
//18

//2.
let grupoDeAmigos1 = [ ["Harry", "Ron", "Hermione"], ["Spiderman", "Hulk", "Ironman"], ["Penélope Glamour", "Pierre Nodoyuna","Patán"] ]
console.log(grupoDeAmigos1[1][0])
//Spiderman

//3.
let str = "uma string qualquer";
let grupoDeAmigos = [ [45, 89, 0], ["Digital", "House", true], ["string", "123","false", 54, true, str] ];
console.log(grupoDeAmigos[2][grupoDeAmigos[2].length-1])
//uma string qualquer (dúvida, aplicação length)

//1 Crie a função imprimirInverso que pega um Array como um argumento e imprime cada elemento em ordem 
//reversa no console (você não precisa inverter o Array).
let grupoDeAmigos2 = ["Harry", "Ron", "Hermione", "Spiderman" ]

function imprimirInverso(x){

    x.reverse();
    console.log(x)

}

//2 Crie a função inverter que recebe um Array como argumento e retorna um novo invertido.

function inverter(z){
    z.reverse();
    console.log(z)

}

imprimirInverso(grupoDeAmigos2)
inverter(grupoDeAmigos2)

//somararray

let numeros = [1, 2, 851, 4];
let numeros1 = [10, 3, 10, 4];
let numeros2 = [-5,100];
let soma = 0;

for (let i=0; i<numeros.length;i++)
{
    soma += numeros[i]
}

console.log(soma)

//somararray reduce

let total = numeros.reduce(function(total, numero){
    return total + numero;
},0);
console.log(total);


//funcao somararray reduce

function somarArray(Array){
    
    let total = Array.reduce(function(total, numero){
    return total + numero;
},0);
console.log(total);
}

somarArray(numeros2)


//Simulação Array.join()
let grupoDeAmigos3 = ["Harry", "Ron", "Hermione", "Spiderman" ]
let palavra = ["o","l","á"];
let palavra1 = ["t","c","h","a","u"];
let texto = "oi boa tarde"

function splitJoin(arr){

console.log(arr.split(" "));


}

splitJoin(texto)

function arrayJoin(arr){

    console.log(arr.join(""));
    
    
    }
    
    arrayJoin(palavra1)
    


//Coleções de Filmes (e mais…)

//1. Criar a estrutura apropriada para armazenar os seguintes filmes e séries:
//2. Os filmes devem estar todos em letras maiúsculas. Para isso, crie uma função que recebe um array por parâmetro e converta o conteúdo de cada elemento em letras maiúsculas.

function Maiuscula(arr){

    for (let contador = 0; contador<arr.length ; contador++){

        arr[contador] = arr[contador].toUpperCase();
    }
    
        return console.log(arr);
    
    }

Maiuscula(filmes)

    //3. Os filmes devem estar todos em letras maiúsculas. Para isso, crie uma função que recebe um array por parâmetro e converta o conteúdo de cada elemento em letras maiúsculas.

    
    
    

    //4. Durante o processo, percebemos que o último elemento na série de filmes animados é, na verdade, um game. 
    //Agora devemos editar nosso código e modificá-lo para que possamos remover o último elemento antes de migrar o conteúdo para o array que contém todos os filmes.



    //5.Finalmente, recebemos dois arrays com classificações feitas por diferentes usuários do mundo nos filmes com o seguinte formato:


