<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>atividade 1 pdf2</title>
</head>
<body>

    <h2>Cálculo de Notas</h2>
    <form action="dados_notas.php" method="POST">
        <label>Digite a primeira nota:</label><br>
        <input type="number" step="0.1" name="nota1" required><br><br>
        
        <label>Digite a segunda nota:</label><br>
        <input type="number" step="0.1" name="nota2" required><br><br>
        
        <button type="submit">Calcular</button>
    </form>
    
</body>
</html>