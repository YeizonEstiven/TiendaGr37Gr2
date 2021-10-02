<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modificar Usuario(s)</title>
    <link rel="stylesheet" type="text/css" href="css/formStyles.css">
    
</head>
<body>
<jsp:include page="Menu.jsp"></jsp:include>
 <form class="form" action="/ciclo3/editCliente.jsp" method="get">
        <h2 class="form_title">Digite su Cedula</h2>
        <div class="form_container">
            <div class="form_group">
                <input type="text" id="cedCliente" name="cedCliente" required class="form_input" pattern="[0-9]+" placeholder=" ">
                <label for="idUser" class="form_label">C�dula: </label>
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