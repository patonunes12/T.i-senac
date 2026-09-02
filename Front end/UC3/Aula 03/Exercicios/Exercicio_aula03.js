
//1 - Crie um programa que receba o Nome do aluno e 3 notas e calcule a media do aluno, exiba o nome e a media

console.log("Exercicio 1")
var nome = prompt("Qual seu nome");
var nota1,nota2,nota3,total,subtotal

nota1=prompt("Qual foi a sua primeira nota ?")
nota2=prompt("Qual a sua segunda nota ?")
nota3=prompt("Qual a sua terceira nota ?")

subtotal = Number(nota1)+Number(nota1)+Number(nota1)
total = Number(subtotal)/ 3

console.log("Ola "+nome+" A sua media foi "+total)






console.log("Exercicio 2")
//2 - crie um programa que receba a quantidade de maçãs que o usuario possui e por quantas pessoas ele que dividir, diga quanto cada um deve receber e qual sera o resto

var frut,pessoas,frut1,frutrest

frut = prompt("Quantas maçãs você tem ?");
pessoas = prompt("Com quantas pessoas você vai dividir as maçãs ?");

frut1 = Number(frut) / Number(pessoas);
frutrest = Number(frut) % Number(pessoas);

console.log("Cada pessoa vai recerber "+frut1+" é sobrara "+frutrest);







console.log("Exercicio 3")
//3 - crie um programa que receba largura e profundidade de um terreno e calcule a área

var larg, terr,area ;

larg = prompt("Qual a largura do terreno");
terr = prompt("Qual a profundidade do terreno");

area = Number(larg) * Number(terr);

console.log("A área do terreno é "+area+"M²");






console.log("Exercicio 4")
//4 - crie um programa que receba o valor de um produto  e o desconto que quer aplicar e exiba o valor com desconto

var prod, desc, pd

prod = prompt("Qual o valor do produto ?")
desc = prompt("Quanto de desconto vai ser colocado % ?")

pd = (Number(prod) * Number(desc))/ 100 ;

console.log("O valor do produto com desconto foi de  R$"+pd+" é o desconto foi de "+desc+"%")





console.log("Exercicio 5")
//5 - crie um programa que converte graus celcius em fahrenheit , receba a temperatura do usuario

var C, F;

C = prompt("Qual a temperatura em Celsius ?")
F = (Number(C) * 1.8 )+ 32



console.log("A sua temperatura em fahrenheit é de "+F+"°F")




//6 - Crie um programa que o garçom digita o valor da conta de um restaurante, diz quantas pessoas tem na mesa, calcule 10% de taxa de serviço e divida a conta entre os integrantes da mesa, ou seja o que cada um deve pagar
console.log("Exercicio 6")

var pess, final, div, cont

cont = prompt("Qual o valor da conta")
pess = prompt("Quantas pessoas estão na mesa")

div = (Number(cont) * 10)/100
final = Number(div)/Number(pess)

console.log("O valor da conta com os 10% da taxa de serviço foi de R$"+div+" e dividido por "+pess+" Fica no valor de R$ "+final+" por pessoa.")
