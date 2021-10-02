<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eliminar Cliente(s)</title>
    <link rel="stylesheet" type="text/css" href="css/formStyles.css">
    
</head>
<body>
<jsp:include page="Menu.jsp"></jsp:include>
 <form class="form" action="/ciclo3/eliminarCliente">
        <h2 class="form_title">Ingrese cliente a eliminar:</h2>
        <div class="form_container">
            <div class="form_group">
                <input type="text" id="idCliente" name="idCliente" required class="form_input" pattern="[0-9]+" placeholder=" " >
                <label for="idUser" class="form_label">Cédula: </label>
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