        let n1 = Number(prompt("Ex 2: Digite o primeiro número:"));
        let n2 = Number(prompt("Ex 2: Digite o segundo número:"));
        let car = prompt("Ex 2: Digite a operação (+, -, *, /):");
        let res2;

        switch (car) {
            case '+': res2 = n1 + n2; 
            break

            case '-': res2 = n1 - n2; 
            break

            case '*': res2 = n1 * n2; 
            break
            
            case '/':
                if (n2 != 0) { res2 = n1 / n2; 
                    alert("Resultado da Calculadora:", res2)
                } 
                else { alert("Erro: Divisão por zero"); }
                break;

            default:
                alert("Operação inválida");
                break
        }

        
        console.log("Resultado da Calculadora:", res2);

