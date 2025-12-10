<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script type="text/javascript" src="js/js.js"></script>
    <link href="../css/estilo.css" rel="stylesheet" type="text/css"/>
    <title>Cadastro de produtos</title>
</head>
<body>
  
    <form  action="../controller/cadastrar.jsp" method="POST">
        <div class="alinhamento1">
            <h1 class="Cadastrotxt">Cadastro de produtos</h1>
        </div>
        <!--<legend class="Cadastrotxt">Formulário de cadastro</legend>-->
        <label for="tipo">Tipo:</label>
        <input type="text" id="tipo" name="tipo" required>

        <label for="preco">Preço:</label>
        <input type="text" id="preco" name="preco" required>

        <label for="cnpj">Cnpj:</label>
        <input type="text" id="cnpj" name="cnpj" required>
        
        <div class="caixa-cc">
            <input type="submit" class="btn-cadastro" value="cadastrar" >
            <input type="submit"  class="btn-cadastro" id="btn-canselar" value="cancelar">
        </div> 
    </form>
    <div class="alinhamento2">
        <a href="../index.html"> <button  id="btn-voltar" >Voltar</button>
        </a>
    </div>
</body>
</html>