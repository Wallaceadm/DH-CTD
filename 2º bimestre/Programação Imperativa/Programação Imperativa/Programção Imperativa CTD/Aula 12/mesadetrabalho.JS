const alicia = [23,29,32];
const bob = [12,67,43];

function encontrarGanhador(){
    let pontosA = 0; // participante a = parâmetro a
    let pontosB = 0; // participante b = parâmetro b
    
    for(let contador = 0; contador < alicia.length; contador++)
{if(alicia[contador]> bob[contador]){
    pontosA++
    console.log("A win")

}else if(bob[contador] > alicia[contador]){
    pontosB++
    console.log("B win")
}else{
    
    console.log("draw")
}

}
//nova estrutura
if(pontosA > pontosB){
    
    console.log("Vencedora")

}else if( pontosB > pontosA){
    
    console.log("Vencedor")

}else{
    
    console.log("draw")

}
}
    
encontrarGanhador()