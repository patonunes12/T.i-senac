<?php

    $valor1 = $_POST['valor1'];
    $valor2 = $_POST['valor2'];
    $valor3 = $_POST['valor3'];

    $menor = $valor1;

    if ($valor2 < $menor) {
        $menor = $valor2;
    }

    if ($valor3 < $menor) {
        $menor = $valor3;
    }

    echo "<h2>Resultado</h2>";
    echo "Menor Numero = " . $menor;

?>