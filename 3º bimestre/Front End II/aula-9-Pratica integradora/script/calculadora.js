



    function calculadora() {
        let num1 = document.getElementById('valor1')
        let num2 = document.getElementById('valor2')
        let oper = window.document.getElementById('operador')
        let resultado = document.getElementById('resultado')


        let valor1 = Number(num1.value);
        let valor2 = Number(num2.value);
        let operador = oper.value; 

        if (operador == "adicao") {
            var result = somar(valor1, valor2);
        } else if
            (operador == "subtracao") {
            var result =  subtrair(valor1,valor2);
        } else if
            (operador == "multiplicacao") {
            var result =  multiplicar(valor1, valor2);
        } else if
            (operador == "divisao") {
            var result =  dividir(valor1, valor2);
        } else {
            // throw new Error
            var result =  alert('Operação inválida');
        }
        resultado.innerText = `O resultado é ${result}`
    };


// Calculo em JS puro

    /* function calculadora(operador, valor1, valor2) {

        if (operador == "+") {
            return somar(valor1, valor2);
        } else if
            (operador == "-") {
            return subtrair(valor1,valor2);
        } else if
            (operador == "*") {
            return multiplicar(valor1, valor2);
        } else if
            (operador == "/") {
            return dividir(valor1, valor2);
        } else {
      
            throw new Error('Operação inválida');
        }

    }; */