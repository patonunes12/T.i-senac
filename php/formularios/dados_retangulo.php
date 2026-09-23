<?php

    $base = $_POST['base'];
    $altura = $_POST['altura'];

    $area = $base * $altura;
    $perimetro = $base + $base + $altura + $altura;

    $quadrado_base = $base * $base;
    $quadrado_altura = $altura * $altura;
    $soma = $quadrado_base + $quadrado_altura;

    $diagonal = $soma ** 0.5;

    echo "AREA = " . number_format($area, 4, '.', '') . "<br>";
    echo "PERIMETRO = " . number_format($perimetro, 4, '.', '') . "<br>";
    echo "DIAGONAL = " . number_format($diagonal, 4, '.', '') . "<br>";

    ?>