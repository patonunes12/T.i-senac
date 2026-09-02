//trocar os valores das variaveis  A e B

//declaração de variação
var A;
var B;



//Entrada

A = prompt("Digite o valor de A")
B = prompt("Digite o valor de B")

console.log("Antes")
console.log("O valor de A é : " + A + ", e o valor de B é : " + B);

//Processamento
var C = A;
A = B
B = A

Soma = Number (A) + Number(B)




//Saida
console.log ("DEPOIS")
console.log("O valor de A é : " + A + ", e o valor de B é : " + B);

console.log("A soma de " + A + " e " + B + " é igual a " + soma)