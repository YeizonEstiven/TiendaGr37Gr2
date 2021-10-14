<%@page import="com.proyect.ciclo3.model.UsuarioDTO"%>
<%@page import="com.proyect.ciclo3.model.UsuarioDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Producto(s)</title>
    <link rel="stylesheet" type="text/css" href="css/formStyles.css">
    
</head>
<body>
<jsp:include page="Menu.jsp"></jsp:include>

 <form class="form" action="./editarProducto" method="get">
        <h2 class="form_title">Actualizar producto</h2>
        <div class="form_container">
            <div class="form_group">
                <input type="text" readonly="readonly" id="codeProducto" name="codeProducto" value="<%=request.getParameter("codeProducto")%>" required class="form_input" placeholder=" ">
                <label for="codeProducto" class="form_label">C&oacute;digo producto: </label>
                <span class="form_line"></span>
            </div>
            <div class="form_group">
                <input type="text" id="ivaProducto" name="ivaProducto" required class="form_input" placeholder=" ">
                <label for="ivaProducto" class="form_label">IVA producto: </label>
                <span class="form_line"></span>
            </div>
            <div class="form_group">
                <input type="text" id="nitProveedor" name="nitProveedor" required class="form_input" placeholder=" ">
                <label for="nitProveedor" class="form_label">Nit Proveedor: </label>
                <span class="form_line"></span>
            </div>
            <div class="form_group">
                <input type="text" id="nombreProducto" name="nombreProducto" required class="form_input" placeholder=" ">
                <label for="nombreProducto" class="form_label">Nombre Producto: </label>
                <span class="form_line"></span>
            </div>
            <div class="form_group">
                <input type="text" id="precioCompra" name="precioCompra" required class="form_input" placeholder=" ">
                <label for="precioCompra" class="form_label">Precio de Compra: </label>
                <span class="form_line"></span>
            </div>
            <div class="form_group">
                <input type="text" id="precioVenta" name="precioVenta" required class="form_input" placeholder=" ">
                <label for="precioVenta" class="form_label">Precio de Venta: </label>
                <span class="form_line"></span>
            </div>
            <div class="campos">
                <input type="submit" class="form_push" value="Guardar">
                <input type="reset" class="form_push" value="Limpiar">
            </div>
        </div>
    </form>
</body>
</html>