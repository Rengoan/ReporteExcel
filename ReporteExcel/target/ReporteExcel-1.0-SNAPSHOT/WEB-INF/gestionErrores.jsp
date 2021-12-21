<%@page isErrorPage="true" %><!--Indicamos que es un JSP que gestiona errores-->
<%@page import="java.io.*"%><!--Para poder usar PrintWriter-->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion de errores</title>
    </head>
    <body>
        <h1>Gestion de errores</h1>
        <br/>
        Ocurrió una excepción: <%=exception.getMessage() %>
        <br/>
        <textarea cols="30" rows="5">
            <% exception.printStackTrace(new PrintWriter(out)); %>
            
        </textarea>
    </body>
</html>
