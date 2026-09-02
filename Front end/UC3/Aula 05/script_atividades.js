/*Uma loja realiza entregas apenas para compras acima de R$ 50,00. Peça ao usuário o valor da compra e informe se ele tem direito à entrega.*/

console.log("Atividade 1")

var comp = Number(prompt("Qual o valor da compra ?"))
var result

if(comp >= 50){
    result = (" tem direito a entrega")
}else{
    result = (" não tem direito a entrega")
}

console.log("Você"+result)



/*Uma loja concede desconto para compras acima de R$ 200,00. Verifique se o cliente recebe o desconto.*/

console.log("Atividade 2")

var comp = Number(prompt("Qual o valor da compra ?"))
var desc = Number(prompt("Quanto de desconto ?"))
var rest

if(comp >= 200){
    rest = (" tem direito a o desconto de "+desc)
}else{
    rest = (" não tem direito a o desconto")
}

console.log("Você"+rest)




/*Classifique um cliente conforme o valor gasto:*/

/*Menor que R$ 100 → Cliente Bronze
Entre R$ 100 e R$ 499 → Cliente Prata
R$ 500 ou mais → Cliente Ouro*/

console.log("Atividade 3")

var num = Number(prompt("Quanto foi o valor gasto ?"))
var clin

if(num <= 100){
    clin = ("Cliente Bronze")

}else if( num <= 499){
    clin = ("Cliente Prata")

}else if( num >= 500){
    clin = ("Cliente Ouro")
}

console.log("Você é "+clin)





/*Determine a comissão de um vendedor:

Até R$ 1.000 em vendas → Comissão de R$ 50
Até R$ 5.000 → Comissão de R$ 200
Acima de R$ 5.000 → Comissão de R$ 500*/

console.log("Atividade 4")

var comp = Number(prompt("Qual o valor da venda ?"))
var total

if(comp == 1000 ){
    total = ("R$ 50")

}else if(comp <= 5000){
    total = ("R$ 200")

}else if(comp > 5000){
    total = ("R$ 500")
}

console.log("A comissão foi de "+total)




/*Verifique a situação de um produto:*/
/*Estoque igual a 0 → Esgotado
Estoque até 10 unidades → Estoque Baixo
Acima de 10 unidades → Estoque Normal*/

console.log("Atividade 5")

var esto = Number(prompt("Quantos item tem no estoque ?"))
var final

if( esto == 0){
    final = ("Esgotado")

}else if(esto <= 10){
    final = ("Estoque Baixo")

}else if(esto > 10){
    final = ("Estoque normal")
}

console.log(final)


/*Classifique um produto de acordo com seu preço:*/
/*Até R$ 50 → Econômico
Até R$ 200 → Intermediário
Acima de R$ 200 → Premium*/


console.log("Atividade 6")
var valor = Number(prompt("Qual o valor do produto ?"))
var finp

if(valor <= 50){
    finp = ("Econômico")
}else if(valor <= 200){
    finp = ("Intermediário")
}else if(valor > 200){
    finp = ("Premium")
}

console.log("Esse Produto é "+finp)




/*A meta diária de um vendedor é R$ 3.000.
/*Menor que R$ 3.000 → Meta não atingida
Igual a R$ 3.000 → Meta atingida
Maior que R$ 3.000 → Meta superada
Determine o valor da entrega:*/

console.log("Atividade 7")
var meta = Number(prompt("Valor diario ?"))
var metaf

if(meta < 3000){
    metaf = ("Meta não foi atingida")

}else if(meta == 3000){
    metaf = ("Meta foi atingida") 

}else if(meta > 3000){
    metaf = ("Meta foi superada")

}

console.log("A sua "+metaf)



/*Determine o valor da entrega:
Compras até R$ 100 → Taxa de R$ 15
Compras até R$ 300 → Taxa de R$ 5
Acima de R$ 300 → Frete grátis*/

console.log("Atividade 8")

var compt = Number(prompt("Qual o valor da compra ?"))
var finalc


if(compt <= 100){
    finalc = ("uma taxa de R$ 15")

}else if(compt <= 300){
    finalc = ("uma taxa de R$ 5")

}else if(compt > 300){
    finalc = ("Frete gratis")
    
}

console.log("A sua entrega tem "+finalc)



/*Classifique o desempenho do vendedor:
Menos de 20 vendas → Regular
De 20 a 49 vendas → Bom
50 vendas ou mais → Excelente*/

console.log("Atividade 9")

var vend = Number(prompt("Quantas venda você fez ?"))
var desv

if(vend < 20){
    desv = ("Regular")

}else if(vend <= 49){
    desv = ("Bom")

}else if(vend >= 50){
    desv = ("Excelente")

}

console.log("O seu desempenho foi "+desv)



/*Uma loja oferece descontos conforme o valor da compra:
Até R$ 100 → Sem desconto
Até R$ 500 → 10% de desconto
Acima de R$ 500 → 20% de desconto
Mostre apenas qual desconto o cliente receberá.*/

console.log("Atividade 10")

var totalcom = Number(prompt("Qual o valor da compra ?"))
var tolds


if(totalcom <= 100){
    tolds = ("Sem desconto")

}else if(totalcom <= 500){
    tolds = ("10% de desconto")

}else if(totalcom > 500){
    tolds = ("20% de desconto")

}

console.log("o seu desconto foi ")