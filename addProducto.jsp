<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agregar Producto</title>
    <link rel="stylesheet" type="text/css" href="css/formStyles.css">
    
</head>
<body>
<jsp:include page="Menu.jsp"></jsp:include>
 <form class="form" action="./agregarProducto">
        <h2 class="form_title">Agregar producto</h2>
        <div class="form_container">
            <div class="form_group">
                <input type="text" id="codeProducto" name="codeProducto" required class="form_input" pattern="[0-9]+" placeholder=" ">
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
                <input type="submit" class="form_push" value="Agregar">
                <input type="reset" class="form_push" value="Limpiar">
            </div>
        </div>
    </form>
</body>
</html>