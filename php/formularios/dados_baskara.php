<?php

    $a = $_POST['a'];
    $b = $_POST['b'];
    $c = $_POST['c'];

    $delta = ($b * $b) - (4 * $a * $c);

    echo "<h2>Resultado</h2>";

    if ($a == 0 || $delta < 0) {
        echo "Esta equacao nao possui raizes reais";
    } else {
        $raiz_delta = $delta ** 0.5;
        $x1 = (-$b + $raiz_delta) / (2 * $a);
        $x2 = (-$b - $raiz_delta) / (2 * $a);

        echo "X1 = " . number_format($x1, 4, '.', '') . "<br>";
        echo "X2 = " . number_format($x2, 4, '.', '') . "<br>";
    }
     
?>