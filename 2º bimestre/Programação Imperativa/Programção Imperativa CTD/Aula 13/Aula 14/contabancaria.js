class Acesso {
    constructor( numero,titular, tipodeconta, saldo) {
            this.numero = numero;
            this.titular = titular;
            this.tipodeconta = tipodeconta;
            this.saldo = saldo;
            


    };
}  




let usuario =[  new Acesso (1730739, 'Ibrahim Nash', "ContaCorrente" , 7822),
            new Acesso (2814070, 'Mário Alexandre Castro', "Poupança", 9257),
            new Acesso (1271012, 'Denise Rocha Leite', "ContaCorrente", 7207),                ),
            new Acesso (1149302, 'Priscilla Bon Garbelini', "Poupança", 8590),
            new Acesso (4024705, 'Stenio Marica Gripp',"ContaCorrente", 3948),
            new Acesso (4368892, 'Fatima Cunha Vargas', "Poupança", 2081 ),
            new Acesso (3302191, 'Fatima Cunha Vargas', "Poupança", 4148 ),
            new Acesso (5420838, 'Jasmim Albuquerque Auzier', "ContaCorrente", 3357 ),
            new Acesso (1156937, 'Wanderley Filho Muniz', "ContaCorrente", 1519),
            new Acesso (884749, 'Agostinha Moura Uchôa', "Poupança", 5331),

];

console.log(usuario);



