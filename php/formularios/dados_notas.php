<?php

    $nota1 = $_POST['nota1'];
    $nota2 = $_POST['nota2'];

    $nota_final = $nota1 + $nota2;

    echo "<h2>Resultado</h2>";
    echo "NOTA FINAL = " . number_format($nota_final, 1, '.', '') . "<br>";

    if ($nota_final < 60.00) {
        echo "REPROVADO";
    }
    
?>