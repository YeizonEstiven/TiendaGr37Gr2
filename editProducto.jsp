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
    <title>Editar Usuario(s)</title>
    <link rel="stylesheet" type="text/css" href="css/formStyles.css">
    
</head>
<body>
<jsp:include page="Menu.jsp"></jsp:include>

 <form class="form" action="./editarUsuario" method="get">
        <h2 class="form_title">Editar cuenta de Usuario</h2>
        <div class="form_container">
            <div class="form_group">
                <input type="text" readonly="readonly" id="idUser" name="idUser" value="<%=request.getParameter("cedUser")%>" required class="form_input" placeholder=" ">
                <label for="idUser" class="form_label">C&eacute;dula: </label>
                <span class="form_line"></span>
            </div>
            <div class="form_group">
                <input type="text" id="emailUser" name="emailUser" required class="form_input" placeholder=" ">
                <label for="emailUser" class="form_label">Correo electr&oacute;nico: </label>
                <span class="form_line"></span>
            </div>
            <div class="form_group">
                <input type="text" id="nameUser" name="nameUser" required class="form_input" placeholder=" ">
                <label for="nameUser" class="form_label">Nombre: </label>
                <span class="form_line"></span>
            </div>
            <div class="form_group">
                <input type="text" id="passUser" name="passUser" required class="form_input" placeholder=" ">
                <label for="passUser" class="form_label">Contrase&ntilde;a: </label>
                <span class="form_line"></span>
            </div>
            <div class="form_group">
                <input type="text" id="userUser" name="userUser" required class="form_input" placeholder=" ">
                <label for="userUser" class="form_label">Usuario: </label>
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