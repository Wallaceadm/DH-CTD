// 1 Crie um formulário com campos de input e botões de submit e reset.

// 2 Previna a página de ser recarregada quando houver o submit utilizando preventDefault().

const botaoSubmit = document.querySelector(".submit");
botaoSubmit.addEventListener("click", function(event){
    
    event.preventDefault();

    let form = document.querySelector("#adiciona");

    let nome = form.nome.value;
    let sobrenome = form.sobrenome.value;

    let eliminarEspacoVazio = nome.trim();
    let aumentarNome = nome.toUpperCase();
    let diminuiNome = nome.toLowerCase();
    let concatNomeSobrenome = nome.concat(sobrenome);
    let replaceNome = nome.replace(/a/g,"@");
    let replaceSobreNome = sobrenome.replace(/e/g,"3");






   

    console.log(eliminarEspacoVazio);
    console.log(diminuiNome);
    console.log(aumentarNome);
    console.log(concatNomeSobrenome); 
    console.log(replaceNome);
    console.log(replaceSobreNome);

});




// 3 Mostre um alerta na página quando a tela terminar de ser carregada.

// window.onload = function exibeMensagem(){

//     alert("A tela foi carregada");
// };

//4 Adicione uma cor a um texto quando o mouse ficar acima do mesmo e outra cor quando ele sair do mesmo.

document.getElementById("titulo").addEventListener("mouseover", mouseOver);
document.getElementById("titulo").addEventListener("mouseout", mouseOut);

function mouseOver(){
    document.getElementById("titulo").style.color = "orange";
};
function mouseOut(){
    document.getElementById("titulo").style.color = "blue";
};



// 5 Faça um trecho de código que utilize algum evento de teclado, esse evento irá escrever o conteúdo do input em uma tag <p> e logo abaixo o número de vezes que esse evento foi chamado. Exemplo: <p>futebol</p> <p>7</p> .


//  function clickSoma() {

//     let form = document.querySelector("#adiciona");
//     let copia = form.nome.value;
//     document.getElementById("nome-copia").innerText = copia;
//     let numeroDeLetras= copia.length
//     console.log(copia);
//     console.log(numeroDeLetras);
// }




