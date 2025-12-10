
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.ProdutoDAO"%>
<%@page import="model.DTO.Produto"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link href="../css/estilo.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body id="corpo-l">
        <div id="corpo-listar"> 
        
        
            
        <div id="cabecalho-listar">
            <header class="botoes">
                
                  <div id="caixa-titulo">
                    <h1>Depósito</h1>
                 
                      
                  </div>
                 
                  <a href="cadastrar_page.jsp" id="btn-listar1">Adicionar produto</a>  
                  
                  
                  <a href="../index.html" id="btn-listar1">Cancelar</a>
                 
            </header>
        </div>  
            <main  id="container-listar">

                <%
                ProdutoDAO objProdutoDAO = new ProdutoDAO();

                ArrayList<Produto> lst = objProdutoDAO.listarProdutos();

                for (int i = 0; i < lst.size(); i++) {
                    out.print("<div id='painel'>");
                    out.print("<p>Id: " + lst.get(i).getId() + "</p>");
                    out.print("<p>Tipo: " + lst.get(i).getTipo() + "</p>");
                    out.print("<p>Preço: " + lst.get(i).getPreco() + "</p>");
                    out.print("<p>Cnpj: " + lst.get(i).getCnpj() + "</p>");
                    
                    out.print("<a href='alterar_page.jsp?"
                                + "id=" + lst.get(i).getId() + ""
                                + "&tipo=" + lst.get(i).getTipo() + ""
                                + "&preco=" + lst.get(i).getPreco() + ""
                                + "&cnpj=" + lst.get(i).getCnpj() + "'><button class='btn-listar'>Alterar</button></a>");
                    out.print("<a href='excluir_page.jsp?"
                                + "id=" + lst.get(i).getId() + ""
                                + "&nome=" + lst.get(i).getTipo() + ""
                                + "&telefone=" + lst.get(i).getPreco() + ""
                                + "&email=" + lst.get(i).getCnpj() + "'><button class='btn-listar'>Excluir</button></a>");
                    
                                
                                
                    out.print("</div>");
                }


            %> 
            </main>
        </div>
    </div>      
    </body>
</html>
