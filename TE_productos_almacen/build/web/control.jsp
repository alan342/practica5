<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Productos</h1>
        <p><a href="Controlador?accion=nuevo">nuevo producto</a></p>
        <table border = 1>
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th>Stock</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${productos}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.descripcion}</td>
                    <td>${item.stock}</td>
                    <td><a href="Controlador?accion=editar&id=${item.id}">EDITAR</a></td>
                    <td><a href="Controlador?accion=eliminar&id=${item.id}">ELIMINAR</a></td>
                </tr>                   
            </c:forEach>
        </table>           
    </body>
</html>
