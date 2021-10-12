<%@page import="com.proyect.ciclo3.Model.ProveedorDTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Proveedor(es)</title>
    <link rel="stylesheet" type="text/css" href="css/formStyles.css">
    
</head>
<body>
<jsp:include page="Menu.jsp"></jsp:include>

 <form class="form" action="/ciclo3/editarProveedor" method="get">
 	<%
 		ProveedorDTO proveedor= (ProveedorDTO)request.getAttribute("proveedor");
 	%>
        <h2 class="form_title">Editar cuenta de Proveedor</h2>
        <div class="form_container">
            <div class="form_group">
                <input type="text" readonly="readonly" id="idProveedor" name="idProveedor" value="<%=proveedor.getNIT()%>" required class="form_input" placeholder=" ">
                <label for="idUser" class="form_label">NIT: </label>
                <span class="form_line"></span>
            </div>
            <div class="form_group">
                <input type="text" id="nameProveedor" name="nameProveedor" value="<%=proveedor.getNombre()%>" required class="form_input" placeholder=" ">
                <label for="emailUser" class="form_label">Nombre Del Proveedor: </label>
                <span class="form_line"></span>
            </div>
            <div class="form_group">
                <input type="text" id="dirProveedor" name="dirProveedor" value="<%=proveedor.getDireccion()%>" required class="form_input" placeholder=" ">
                <label for="nameUser" class="form_label">Direccion: </label>
                <span class="form_line"></span>
            </div>
            <div class="form_group">
                <input type="text" id="telProveedor" name="telProveedor" value="<%=proveedor.getTelefono()%>" required class="form_input" pattern="[0-9]+" placeholder=" ">
                <label for="passUser" class="form_label">Telefono: </label>
                <span class="form_line"></span>
            </div>
            <div class="form_group">
                <input type="text" id="ciudadProveedor" name="ciudadProveedor" value="<%=proveedor.getCiudad()%>" required class="form_input" placeholder=" ">
                <label for="userUser" class="form_label">Ciudad: </label>
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