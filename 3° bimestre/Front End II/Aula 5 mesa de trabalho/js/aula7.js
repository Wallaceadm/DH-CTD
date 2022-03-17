let selecionaFelino = prompt("Escolha o nome de um felino");

let imagem = document.querySelectorAll("img");

let inseriNovaImagem = prompt("Nova imagem - url do google");



imagem[selecionaFelino].setAttribute("src", inseriNovaImagem);
