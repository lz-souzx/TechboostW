

<%@page import="DAO.ProdutoDAO"%>
<%@page import="model.DTO.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>alterar</title>
        <meta http-equiv="refresh" content="0.01; ../index.html">
    </head>
    <body>
        <%
        Produto objProduto = new Produto();
        objProduto.setId(Integer.parseInt(request.getParameter("id")));
        objProduto.setTipo(request.getParameter("tipo"));
        objProduto.setPreco(Double.parseDouble(request.getParameter("preco")));
        objProduto.setCnpj(request.getParameter("cnpj"));
        
           ProdutoDAO objProdutoDAO = new ProdutoDAO();
           objProdutoDAO.alterarProduto(objProduto);
        %>
    </body>
</html>
