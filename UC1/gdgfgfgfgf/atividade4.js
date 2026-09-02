        let cod4 = prompt("Ex 4: Digite o código do item (100 a 105):");
        let qtd = prompt("Ex 4: Digite a quantidade adquirida:");
        let tot4;

        switch (cod4) {
            case "100": tot4 = 1.70 * qtd; 
            break

            case "101": tot4 = 2.30 * qtd; 
            break

            case "102": tot4 = 2.60 * qtd; 
            break

            case "103": tot4 = 2.40 * qtd; 
            break

            case "104": tot4 = 2.50 * qtd; 
            break

            case "105": tot4 = 1.00 * qtd; 
            break

            default:
                alert("Código de produto inválido.");
                break;
        }

        console.log("Total do Cardápio: R$", tot4);

