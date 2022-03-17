let filmes = ['star wars', 'totoro', 'rocky', 'pulp fiction', 'la vida es bela'];
let filmesdois =['tenet', 'A caçada', 'Loki', 'Chang Shi'];


function PassagemdeElemnto(){
    for (let contador = 0; contador <  4; contador++){
    
        filmes.push(filmesdois.pop());
    }
    
    return filmes;
    
    }
    
    console.log(PassagemdeElemnto())

    console.log(filmes.length);


    //5.Finalmente, recebemos dois arrays com classificações feitas por diferentes usuários do mundo nos filmes com o seguinte formato:



    const asiaScores = [8, 10, 6, 9, 10, 6, 6, 8, 4];
	const euroScores = [8, 10, 6, 8, 10, 6, 7, 9, 5];

    function comparadora(){

for(let i = 0; i < asiaScores.length; i++){

    if(asiaScores[i] > euroScores[i]){

        console.log("asia")
    
    }else if(euroScores[i] > asiaScores[i]){
        
        console.log("euro")

}else{

    console.log("igual")
}
}
    }



comparadora()

   console.log(euroScores.length)