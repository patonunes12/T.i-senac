function testar(){

    let ano = window.document.getElementById('ano')
    let sexo = window.document.getElementsByName('sexo')
    let texto = window.document.getElementById('textos')
    let img = window.document.getElementById('foto')

    let anoValor = Number(ano.value)
    let idade = 2026 - anoValor
    let genero =''

    if (sexo[0].checked){
        genero = 'F'
    } else {
        genero = 'M'
    }
    
    switch (genero){
        case 'M':
            if(idade > 226 || idade < 0 || ano.value.length == 0){
                texto.innerText = 'ERRO - Digite uma data válida (De 1800 à 2026)'
                window.alert('[ERRO] - Digite uma data válida (De 1800 à 2026)')
                img.style.display = 'none'

            } else if(idade <= 3){
                texto.innerText = `Você é um bebê de ${idade} anos!`
                img.style.display = 'block'
                img.style.margin = 'auto'
                img.style.paddingBottom = '10px'
                img.src = './imagem/bebê menino.jpg'

            } else if(idade <= 10){
                texto.innerText = `Você é uma criança de ${idade} anos!`
                img.style.display = 'block'
                img.style.margin = 'auto'
                img.style.paddingBottom = '10px'
                img.src = './imagem/criança menino.jpg'

            } else if(idade < 14){
                texto.innerText = `Você é um pré-adolescente de ${idade} anos!`
                img.style.display = 'block'
                img.style.margin = 'auto'
                img.style.paddingBottom = '10px'
                img.src = './imagem/pre adolescente menino.jpg' 

            } else if(idade < 18){
                texto.innerText = `Você é um adolescente de ${idade} anos!`
                img.style.display = 'block'
                img.style.margin = 'auto'
                img.style.paddingBottom = '10px'
                img.src = './imagem/adolescente menino.jpg'

            } else if(idade < 33){
                texto.innerText = `Você é um homem de ${idade} anos!`
                img.style.display = 'block'
                img.style.margin = 'auto'
                img.style.paddingBottom = '10px'
                img.src = './imagem/jovem adulto.jpg'  

            } else if(idade < 60){
                texto.innerText = `Você é um homem de ${idade} anos!`
                img.style.display = 'block'
                img.style.margin = 'auto'
                img.style.paddingBottom = '10px'
                img.src = './imagem/meia idade homem.jpg'

            } else if(idade < 79){
                texto.innerText = `Você é um homem de ${idade} anos!`
                img.style.display = 'block'
                img.style.margin = 'auto'
                img.style.paddingBottom = '10px'
                img.src = './imagem/idoso 70.jpg'    

            } else {
                texto.innerText = `Você é um senhor de ${idade} anos!`
                img.style.display = 'block'
                img.style.margin = 'auto'
                img.style.paddingBottom = '10px'
                img.src = './imagem/idoso100.jpg'
            }
        break
            
        case 'F':
            if(idade > 226 || idade < 0 || ano.value.length == 0){
                texto.innerText = 'ERRO - Digite uma data válida (De 1800 à 2026)'
                window.alert('[ERRO] - Digite uma data válida (De 1800 à 2026)')
                img.style.display = 'none'

            } else if(idade <= 3){
                texto.innerText = `Você é uma bebê de ${idade} anos!`
                img.style.display = 'block'
                img.style.margin = 'auto'
                img.style.paddingBottom = '10px'
                img.src = './imagem/bebê menina.jpg' 

            } else if(idade <= 10){
                texto.innerText = `Você é uma criança de ${idade} anos!`
                img.style.display = 'block'
                img.style.margin = 'auto'
                img.style.paddingBottom = '10px'
                img.src = './imagem/criança menina.jpg' 

            } else if(idade < 14){
                texto.innerText = `Você é uma pré-adolescente de ${idade} anos!`
                img.style.display = 'block'
                img.style.margin = 'auto'
                img.style.paddingBottom = '10px'
                img.src = './imagem/pre adolescente menina.jpg'

            } else if(idade < 18){
                texto.innerText = `Você é uma adolescente de ${idade} anos!`
                img.style.display = 'block'
                img.style.margin = 'auto'
                img.style.paddingBottom = '10px'
                img.src = './imagem/adolescente menina.jpg' 
               
            } else if(idade < 33){
                texto.innerText = `Você é uma mulher de ${idade} anos!`
                img.style.display = 'block'
                img.style.margin = 'auto'
                img.style.paddingBottom = '10px'
                img.src = './imagem/jovem adulta.jpg'    
                
            } else if(idade < 60){
                texto.innerText = `Você é uma mulher de ${idade} anos!`
                img.style.display = 'block'
                img.style.margin = 'auto'
                img.style.paddingBottom = '10px'
                img.src = './imagem/meia idade mulher.jpg' 

            } else if(idade < 79){
                texto.innerText = `Você é uma mulher de ${idade} anos!`
                img.style.display = 'block'
                img.style.margin = 'auto'
                img.style.paddingBottom = '10px'
                img.src = './imagem/idosa 70.jpg'

            } else {
                texto.innerText = `Você é uma senhora de ${idade} anos!`
                img.style.display = 'block'
                img.style.margin = 'auto'
                img.style.paddingBottom = '10px'
                img.src = './imagem/idosa 100.jpg'
            }
        break
    }
}
