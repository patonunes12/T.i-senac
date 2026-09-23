<?php

    $largura = $_POST['largura'];
    $comprimento = $_POST['comprimento'];
    $valor_metro = $_POST['valor do metro'];

    $area = $largura * $comprimento;
    $preco = $area * $valor_metro;

    echo "<h2>Resultado</h2>";
    echo "Area do terreno = " . number_format($area, 2, '.', '') . "<br>";
    echo "Preco do terreno = " . number_format($preco, 2, '.', '') . "<br>";

?>
