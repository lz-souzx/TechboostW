
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script type="text/javascript" src="js/js.js"></script>
    <link href="../css/estilo.css" rel="stylesheet" type="text/css"/>

    <title>Excluir produto</title>

</head>
<body>
    
    <form action="../controller/excluir.jsp" method="POST">
        <div class="alinhamento1">
            <h1 class="Excluirtxt">Excluir</h1>
        </div>
        <!--<legend class="Excluirtxt">Formulário de excluir</legend>-->
        <label clas="id-legend">Id:</label>
        <input type="text"  name="id"
               value="<%=request.getParameter("id")%>">

        <div class="caixa-cc">
            <input class="btn-cadastro" id="btn-cancelar" type="submit" value="Excluir">
            <input type="button" id="btn-cancelar" class="btn-cadastro" name="botao" value="cancelar" onclick="index.html">
        </div>
    </form>
    <div class="alinhamento2">
        <a href="../index.html"> <button id="btn-voltar" class="btn-carrinho-1" >Voltar</button>
        </a>
    </div>
</body>
</html>    
