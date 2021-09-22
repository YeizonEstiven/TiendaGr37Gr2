<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Modelo.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menú principal</title>
</head>
<body>

	<%
		String nombreUser = request.getParameter("nombreUsuario");
		String passwordUser = request.getParameter("passUsuario");
		Conexion conect = new Conexion();
		PreparedStatement ps = conect.getConection().prepareStatement("SELECT * FROM usuarios WHERE nombre_usuario= ? AND password = ?");
		ps.setString(1, nombreUser);
		ps.setString(2, passwordUser);
		ResultSet result = ps.executeQuery();
		int i = 0;
		while(result.next()){
			i++;
		}
		if(i == 1){
			response.sendRedirect("Menu.html");
		}else{
			//enviar un mensaje de alerta o mensaje de error para este caso donde especifique algo similar a la linea 30
			out.println("Nombre de usuario y/o contraseña son incorrectos");
			response.sendRedirect("index.html");
			}
		%>
	

</body>
</html>