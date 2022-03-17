
//1 - Considere o código abaixo e escolha 
//a alternativa que mostra as saídas corretas. *

function soma(a=1, b=3)
{return a+b}

console.log(soma());
console.log(soma(3));
console.log(soma(1,2));


//3 - Dado o array: let numeros= [10, 8, 7, 99, 0, 1, 6].
// Qual comando devemos executar para que a saída seja: [ 99, 10, 8, 7, 6, 1, 0] ? *

let numeros= [10, 8, 7, 99, 0, 1, 6]
numeros.sort(function(a,b){ return b-a;});
console.log(numeros)

//4 - Após a execução do código a seguir
//assinale a alternativa correta para o valor de z. *

var z=0;
for(var i =20; i<50; i+=10){
    z+=i;}

    console.log(z);

    function teste (a,b){
        return a%b;
    }
//5
    console.log(teste(50,3))
    

    //7
    let frutasAmarelas= ['Melão','Mamão','Limão','siciliano'];
    let frutasVermelhas= ['Morango','Cereja','Maça red'];
    let frutasVerdes= ['Limão','Kiwi','Maça verde'];

    frutasVermelhas1 = frutasVermelhas.map(fruta =>fruta.toLocaleUpperCase());
    let todasFrutas=[...frutasAmarelas,...frutasVermelhas1,...frutasVerdes];

    
    console.log(todasFrutas);
    

//9
let valor= 5;
let fatorial =1;

for(let i = valor; i > 1; i--){
    fatorial*=1;}
    console.log("Fatorial ="+fatorial)


//13

let x=5;
let y = x++ + ++x;
console.log("y="+y);
x=3;
y=x*(x+1)*x++;
x=5;
y=3;
y*=x+1;
console.log("x= "+x);
console.log("y= "+y);

//16
let a = 5;
let b =6;

if(a>b){
    console.log("Sejoga")
}

console.log(a>b)
