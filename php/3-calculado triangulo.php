<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CALCULADORA triangulo</title>
</head>
<body>

<?php
$base = $_GET['base'];
$altura = $_GET['altura'];
$area = ($base * $altura) / 2;

echo 'Sua área é de: '. round($area,2) . '</br>';


?>
    
</body>
</html>