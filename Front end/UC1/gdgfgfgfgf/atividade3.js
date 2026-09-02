        let num1 = prompt("Ex 3: Digite o primeiro número:");
        let num2 = prompt("Ex 3: Digite o segundo número:");
        let esc = prompt("Ex 3: Escolha a operação:\n1 - Média\n2 - Diferença\n3 - Produto\n4 - Divisão");
        let res3;

        switch (esc) {
            case "1": res3 = (num1 * 1 + num2 * 1) / 2; 
            break

            case "2": res3 = Math.abs(num1 - num2); 
            break

            case "3": res3 = num1 * num2; 
            break

            case "4":
                if (num2 != 0) { res3 = num1 / num2; } 
                else { alert("Erro: O segundo número não pode ser zero."); }
                break

            default:
                alert("Erro: Opção inválida. Execução terminada.");
                break
        }

        console.log("Resultado do menu:", res3);