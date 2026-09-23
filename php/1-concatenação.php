<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>concatenação</title>
</head>
<body>

<?php
$nome = 'Rafael Nunes Silva';
$idade = '17 Anos';
$profissao = 'Vagabundo premium';

/*concatenando opção 01*/ 

$fichaCompleta ='<strong>Nome:</strong>'. $nome . ' - <strong>Idade:</strong>' . $idade . ' - <strong>Profissão:</strong> ' . $profissao . '.';
echo 'opção 1: ' . $fichaCompleta;
echo ' <hr>';


/*opção 02*/ 
$fichaCompleta = "<strong>Nome:</strong> $nome - ";
$fichaCompleta = "<strong>Idade:</strong> $idade - ";
$fichaCompleta = "<strong>Profissão:</strong> $profissao.";
echo 'opção 2: ' . $fichaCompleta . '<hr>';


/*opção 03*/
$fichaCompleta = "Meu nome é {$nome}, tenho {$idade} anos e sou {$profissao}.";
echo 'opção 3: ' . $fichaCompleta  . '<hr>';


/*opção 04*/
echo "opção 4: Meu <strong>nome</strong> é {$nome}, tenho {$idade} anos e sou {$profissao}.";


?>





    
</body>
</html>