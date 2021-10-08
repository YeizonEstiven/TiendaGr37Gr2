<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eliminar Usuario(s)</title>
    <link rel="stylesheet" type="text/css" href="css/formStyles.css">
    
</head>
<body>
<jsp:include page="Menu.jsp"></jsp:include>
 <form class="form" action="./eliminarUsuario">
        <h2 class="form_title">Ingrese usuario a eliminar:</h2>
        <div class="form_container">
            <div class="form_group">
                <input type="text" id="idUser" name="idUser" required class="form_input" pattern="[0-9]+" value="<%=request.getParameter("cedUser")%>" placeholder=" " >
                <label for="idUser" class="form_label">C&eacute;dula: </label>
                <span class="form_line"></span>
            </div>
            <div class="campos">
                <input type="submit" class="form_push" value="Eliminar">
                <input type="reset" class="form_push" value="Limpiar">
            </div>
        </div>
    </form>
</body>
</html>