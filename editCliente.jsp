<%@page import="com.proyect.ciclo3.Model.ClienteDTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Cliente(s)</title>
    <link rel="stylesheet" type="text/css" href="css/formStyles.css">
    
</head>
<body>
<jsp:include page="Menu.jsp"></jsp:include>

 <form class="form" action="/ciclo3/editarCliente" method="get">
 	<%
 		ClienteDTO cliente = (ClienteDTO)request.getAttribute("cliente");
 	%>
        <h2 class="form_title">Editar cuenta de Cliente</h2>
        <div class="form_container">
            <div class="form_group">
                <input type="text" readonly="readonly" id="idCliente" name="idCliente" value="<%=cliente.getCedula()%>" required class="form_input" placeholder=" ">
                <label for="idUser" class="form_label">Cédula: </label>
                <span class="form_line"></span>
            </div>
            <div class="form_group">
                <input type="text" id="dirCliente" name="dirCliente" value="<%=cliente.getDireccion()%>" required class="form_input" placeholder=" ">
                <label for="emailUser" class="form_label">Direccion: </label>
                <span class="form_line"></span>
            </div>
            <div class="form_group">
                <input type="text" id="emailCliente" name="emailCliente" value="<%=cliente.getEmail()%>" required class="form_input" placeholder=" ">
                <label for="nameUser" class="form_label">Email: </label>
                <span class="form_line"></span>
            </div>
            <div class="form_group">
                <input type="text" id="nameCliente" name="nameCliente" value="<%=cliente.getNombre_completo()%>" required class="form_input" placeholder=" ">
                <label for="passUser" class="form_label">Nombre Completo: </label>
                <span class="form_line"></span>
            </div>
            <div class="form_group">
                <input type="text" id="telCliente" name="telCliente" value="<%=cliente.getTelefono()%>" required class="form_input" pattern="[0-9]+" placeholder=" ">
                <label for="userUser" class="form_label">Telefono: </label>
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