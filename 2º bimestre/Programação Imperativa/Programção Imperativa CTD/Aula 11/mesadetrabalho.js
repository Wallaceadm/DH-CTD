let filmes = ['star wars', 'totoro', 'rocky', 'pulp fiction', 'la vida es bela'];
let filmesdois =['tenet', 'A caçada', 'Loki', 'Chang Shi'];

function convertermaiusculos(array) {
for (let contador = 0; contador<array.length ; contador++){

    array[contador] = array[contador].toUpperCase();
}

    return console.log(array);

}


convertermaiusculos(filmes)


function PassagemdeElemnto(array, array2){
for (let contador = 0; contador < array.length ; contador++){

    array[contador].push(array2[contador].pop());
}

return array;

}

console.log(PassagemdeElemnto(filmes, filmesdois))











let ParticipanteA = [5, 8, 4, 9, 5]; 
let ParticipanteB = [8, 7, 8, 6, 8];
let ParticipanteC = [7, 5, 10, 8, 3];