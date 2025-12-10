
<%@page import="DAO.ProdutoDAO"%>
<%@page import="model.DTO.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de produtos</title>
        <meta http-equiv="refresh" content="0.001; ../index.html">
    </head>
    <body>
        <h1>Produto cadastrado!</h1>
        <%

            Produto objProduto = new Produto();

            objProduto.setTipo(request.getParameter("tipo"));
            objProduto.setPreco(Double.parseDouble(request.getParameter("preco")));
            objProduto.setCnpj(request.getParameter("cnpj"));

            ProdutoDAO objProdutoDAO = new ProdutoDAO();
            objProdutoDAO.CadastrarProduto(objProduto);

        %>
    </body>
</html>
