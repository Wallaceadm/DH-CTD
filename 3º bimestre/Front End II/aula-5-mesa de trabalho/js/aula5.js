
function darkMode(){

var fundo = document.querySelector("body")
fundo.classList.toggle("cor-de-fundo-darkmode");

var titulo = document.querySelector("h1")
titulo.classList.toggle("titulo-darkmode");

var item = document.querySelectorAll(".item")
item.forEach(item =>{
    item.classList.toggle("itens-darkmode");
    item.classList.toggle("texto-itens-darkmode");
});

};

var buttonDarkMode = document.querySelector(".darkmode");
buttonDarkMode.onclick = darkMode;