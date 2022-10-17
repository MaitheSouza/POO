<%-- 
    Document   : exemplojsp
    Created on : 17 de out de 2022, 14:01:44
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Exemplo de JSP</h1>
        <div>
            <%
                String mensagem = "Bem vindo a página em JSP!"; 
                out.println(mensagem);
                out.println("Scriplet é um código escrito entre tags com a linguagem java");
            %>
        </div>
        
        <div>
            <%
                out.println("Ou seja, JSP é um arquivo baseado em HTML com a extensão .jsp");
            %>
        </div>
        
        
    </body>
</html>
