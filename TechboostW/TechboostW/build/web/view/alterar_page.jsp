
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Faormulário de alteração</title>
        <link href="../css/estilo.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        
            <form action="../controller/alterar.jsp">
                <div class="alinhamento1">
                    <h1 class="Cadastrotxt"> Alterar produtos </h1>
                </div>
                <label>ID: <%=request.getParameter("id")%></label>
                <input type="text" style="display: none" name="id" value="<%=request.getParameter("id")%>">
                <label for="tipo">Tipo:</label>
                <input type="text" name="tipo" value="<%=request.getParameter("tipo")%>">
                <label>Preço:</label> 
                <input type="text" name="preco" value="<%=request.getParameter("preco")%>">
                <label>Cnpj: </label> <input type="text" name="cnpj" value="<%=request.getParameter("cnpj")%>">
                <input type="submit" class="btn-cadastro" value="Alterar">
                <a href="../index.html"><button id="btn-canselar" class="btn-cadastro"> Cancelar </button></a>
            </form>
        
    </body>
</html>
