<!DOCTYPE html>
<html lang="PT-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CALCULADORA</title>
</head>
<body>

<?php
    $peso = $_GET['peso'];
    $altura = $_GET['altura'];
    $imc = $peso / ($altura * $altura);

    echo 'Seu Imc é de: '. round($imc,2) . '</br>';

    if($imc < 18.5){
        echo 'Você tem magreza';

    }else if($imc >= 18.5 || $imc < 24.9){
        echo 'Você esta com o peso adequado';

    }else if($imc >= 25.0 || $imc < 29.9){
        echo 'Você esta com sobrepeso';

    }else if($imc >= 30.0 || $imc < 34.9){
         echo 'Você esta com obesidade grau 1';

    }else if($imc >= 35.0 || $imc < 39.9){
         echo 'Você esta com obesidade grau 2';

    }else{
        echo 'Você esta com obesidade grau 3';
    }




?>
    
</body>
</html>