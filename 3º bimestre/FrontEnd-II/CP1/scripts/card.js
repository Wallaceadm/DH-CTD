let container = document.querySelectorAll('.container');


let botaoEnviar = document.querySelector("#enviar");
botaoEnviar.addEventListener("click", function(event){
    event.preventDefault();
//selecionar o formulario
    let form = document.querySelector("#formulario");

//pega os valores do formulário
    let imagem = form.imagem.value;
    let nome= form.nome.value;
    let sobre= form.sobre.value;
//cria elementos da página
    let cardDiv = document.createElement("div");
    cardDiv.classList.add(`item`);
    let imagemDiv = document.createElement("img");
    let tituloImagemDiv = document.createElement("h2");
    let sobreDiv = document.createElement("p");
    //seleciona o container
  
    imagemDiv.src = imagem;
    imagemDiv.setAttribute("src",imagem);
    tituloImagemDiv.innerHTML = nome;
    sobreDiv.innerHTML = sobre;

//coloca as informações do formulário no itensDoCard
    cardDiv.appendChild(imagemDiv);
    cardDiv.appendChild(tituloImagemDiv);
    cardDiv.appendChild(sobreDiv);

    container[1].appendChild(cardDiv);

// inserir a div no container.  
    console.log(cardDiv)

// inseridor o colors na cardDiv

cardDiv.forEach(item => {
    item.classList.add('items-dark');

    // 2 maneira: Capturando pelo seletor (Recomendado) 
    item.querySelector('h2').classList.add('items-text-dark')
    item.querySelector('p').classList.add('items-text-dark')
}); 

});