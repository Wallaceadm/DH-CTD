function somar(a,b){

    return a+b

}

function subtrair(a,b){

    return a-b

}

function dividir(a,b){

    return a/b

}

function multiplicar(a,b){

    return a*b

}

function quadradoDoNumero(a){

    return a*a

}



function mediaDeTresNumeros(a,b,c){

    return ((a+b+c)/3).toFixed(2)

}

function calculaPorcentagem(a,b){

    return multiplicar((dividir(b,100)),a);

}


function geradorDePorcentagem(a,b){
    return dividir(multiplicar(a,100),b)
}


console.log(multiplicar(5,5));
console.log(somar(5,1));
console.log(subtrair(16,7));
console.log(dividir(45,5));
console.log(dividir(45,0));
console.log(quadradoDoNumero(8));
console.log(mediaDeTresNumeros(8,12,15));
console.log(calculaPorcentagem(300,15));
console.log(geradorDePorcentagem(2,200));

