        let m = prompt("Ex 5: Digite o mês do ano:");
        let mF = m ? m.toLowerCase().trim() : "";
        let est;

        switch (mF) {
            case 'dezembro': 
            case 'janeiro': 
            case 'fevereiro': 
            est = "Verão"; 
            break

            case 'março': 
            case 'abril': 
            case 'maio': 
            est = "Outono"; 
            break

            case 'junho': 
            case 'julho': 
            case 'agosto': 
            est = "Inverno"; 
            break

            case 'setembro': 
            case 'outubro': 
            case 'novembro': 
            est = "Primavera"; 
            break
            
            default:
                alert("Mês inválido");
                break
        }

        console.log("Estação do ano:", est);
