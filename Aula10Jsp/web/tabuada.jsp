<%-- 
    Document   : tabuada
    Created on : 31 de out de 2022, 14:31:18
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
         <%
            String errorMessage = null;
            boolean hasParameterN = request.getParameter("n") != null;
            double n = 0;
            try{
                n = Integer.parseInt(request.getParameter("n"));
            }catch(Exception ex){
                errorMessage = ex.getMessage();
            }
        %>
        <h4><a href="index.html">Voltar</a></h4>
        <h1>JSP</h1>
        <h2>Tabuada</h2>
        <div>
            <% if(hasParameterN && errorMessage!=null){ %>
                <div style="color:red"><%= errorMessage %></div>
            <%}%>
            <% if(hasParameterN){ %>
            <table>
                <%for (int i=1; i<=10; i++){%>
                <tr>
                    <td><%= n %> *</td>
                    <td><%= i %> =</td>
                    <td><%= (n*i) %></td>
                </tr>
                <%}%>
            </table>
            <%}%>
            <form>
                <input type="number" name="n"/>
                <input type="submit" name="Gerar"/>
            </form>
        </div>
    </body>
</html>