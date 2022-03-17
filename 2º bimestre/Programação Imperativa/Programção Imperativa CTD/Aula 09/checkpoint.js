let mens;
let Pipoca;
let Macarrao; 
let Carne;
let Feijao;
let Brigadeiro = 9;

if (Pipoca < 10){
    mens= 1;
} else if(Pipoca >= 10 && Pipoca <= 20){
    mens= 2;
}
else if(Pipoca > 20 && Pipoca < 30){
    mens= 3;
}
else if(Pipoca > 30){
    mens= 4;
}else if(Macarrao < 8){
     mens= 1;
} else if(Macarrao >= 8 && Macarrao <= 16){
    mens= 2;
}
else if(Macarrao > 16 && Macarrao <= 24){
    mens= 3;
}
else if(Macarrao > 24){
    mens= 4;
}else if(Brigadeiro < 8){
    mens= 1;
} else if(Brigadeiro >= 8 && Brigadeiro <= 16){
   mens= 2;
}
else if(Brigadeiro > 16 && Brigadeiro <= 24){
   mens= 3;
}
else if(Brigadeiro > 24){
   mens= 4;
}else if(Carne < 15){
    mens= 1;
} else if(Carne >= 15 && Carne <= 30){
   mens= 2;
}
else if(Carne > 30 && Carne <= 45){
   mens= 3;
}
else if(Carne > 45){
   mens= 4;
}else if(Feijao < 12){
    mens= 1;
} else if(Feijao >= 12 && Feijao <= 24){
   mens= 2;
}
else if(Feijao > 24 && Feijao <= 36){
   mens= 3;
}
else if(Feijao > 36){
   mens= 4;

}else{
    mens = 0;
}


switch(mens){

case 1:
    console.log("Tempo insuficiente");
    break;
case 2:
    console.log("Tempo correto")
    break;
case 3:
    console.log("A comida queimou")
break;
case 4:
    console.log("kabumm")
break;
default:
    console.log("Prato inexistente")

}