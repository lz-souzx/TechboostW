
<%@page import="DAO.ProdutoDAO"%>
<%@page import="model.DTO.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta http-equiv="refresh" content="0.001; ../view/listar_page.jsp">
    </head>
    <body>
        <%
            Produto objProduto = new Produto();
            objProduto.setId(Integer.parseInt(request.getParameter("id")));
            
            ProdutoDAO objProdutoDAO = new ProdutoDAO();
            objProdutoDAO.excluirProduto(objProduto);
        %>
    </body>
</html>
