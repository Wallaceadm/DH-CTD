function Acesso(titular, tipodeconta, saldo, email, senha) {
    
        this.titular = titular;
        this.tipodeconta = tipodeconta;
        this.saldo = saldo;
        this.email = email;
        this.senha = senha;

 
}  




let usuario = new Acesso ('Ibrahim Nash', "ContaCorrente" , 158 , 'ibrahim@gmail.com', 15890);

console.log(usuario);

let usuarioConvertido = JSON.stringify(usuario);

console.log(usuarioConvertido);




