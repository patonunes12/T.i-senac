        let cod1 = prompt("Ex 1: Digite o código do produto (1 a 15):");
        let cls;

        switch (cod1) {
            case "1": cls = "Alimento não-perecível";
            break

            case "2": 
            case "3": 
            case "4": cls = "Alimento perecível"; 
            break

            case "5": 
            case "6": cls = "Vestuário"; 
            break

            case "7": cls = "Higiene Pessoal"; 
            break
            
            default:
                if (cod1 >= 8 && cod1 <= 15) { cls = "Limpeza e Utensílios Domésticos"; } 
                else { alert("Código inválido"); }
                break
         
        }

        console.log("Classificação do produto:", cls);