<!-- DIRECTIVA PARA GESTIONAR ERRORES EN JSP -->
<%@page errorPage="WEB-INF/gestionErrores.jsp" %>

<!-- USO DE DIRECTIVA PARA IMPORTRAR CLASES EN JSP -->
<%@page import="utils.conversiones, java.util.Date" %>

<!-- Uso de directiva para especificar respuesta -->
<%@page contentType="application/vnd.ms-excel" pageEncoding="UTF-8"%>

<!-- Indicamos el nombre del fichero excel,attachement es como fichero adjunto  -->
<%
    String nombreArchivo = "reporte.xls";
    response.setHeader("Content-Sisposition", "attachement; filename="+nombreArchivo);
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reporte Excel</title>
    </head>
    <body>
        <h1>Reporte Excel</h1>
        <table border="1">
            <tr>
                <th>Curso</th>
                <th>Descripción</th>
                <th>Fecha</th>
            </tr>
            <tr>
                <td>Fundamentos de java</td>
                <td>Aprendemos la sintasis básica de java</td>
                <td><%= conversiones.format("500") %> </td>
                <!-- DEVUELVE ERROR 500
                isaremos directivas y atributo ERRROPAGE
                cuando se produzca excepción que se redirija a otro jsp--->
            </tr>
            <tr>
                <td>Programacion con java</td>
                <td>Ponemos en práctica conceptos</td>
                <td><%= conversiones.format(new Date()) %> </td>
            </tr>
        </table>
    </body>
</html>
