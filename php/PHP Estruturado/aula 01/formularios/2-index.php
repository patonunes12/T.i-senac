<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>atividade 1 pdf1</title>
</head>
<body>
    <h2>Dados do Terreno</h2>
    <form action="processa_terreno.php" method="POST">
        <label>Digite a largura do terreno:</label><br>
        <input type="number" step="0.1" name="largura" required><br><br>
        
        <label>Digite o comprimento do terreno:</label><br>
        <input type="number" step="0.1" name="comprimento" required><br><br>
        
        <label>Digite o valor do metro quadrado:</label><br>
        <input type="number" step="0.01" name="valor_metro" required><br><br>
        
        <button type="submit">Calcular</button>
    </form>
</body>
</html>