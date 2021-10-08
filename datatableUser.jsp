<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.proyect.ciclo3.model.UsuarioDAO"%>
<%@page import="com.proyect.ciclo3.model.UsuarioDTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Usuarios</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="css/datatableStyle.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css">
    <script type="text/javascript">
        function enviarForma(destino){
            if(destino=='adicionar'){
                document.usuarios.action='addUser.jsp';
                document.usuarios.submit();
            }
            if(destino=='editar'){
                if(document.usuarios.cedUser.value!=''){
                    document.usuarios.action='editUser.jsp';
                    document.usuarios.submit();
                }else{
                    alert('Seleccione un registro para editar');
                }
            }
            if(destino=='eliminar'){
                if(document.usuarios.cedUser.value!=''){
                    document.usuarios.action='deleteUser.jsp';
                    document.usuarios.submit();
                }else{
                    alert('Seleccione un registro para eliminar')
                }
            }
        }
    </script>
</head>
<body>
    <jsp:include page="Menu.jsp"></jsp:include>
    
    <div class="datatable-container">
    <%
        if(request.getAttribute("mensaje")!=null){
    %>
    <!--<div style="color: green;"><%=request.getAttribute("mensaje") %></div>-->
    <!--mensaje de alerta pop up*-->
    <div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
			<div class="toast-header">
			<img src="..." class="rounded me-2" alt="...">
			<strong class="me-auto">Usuarios</strong>
			<small>Just now</small>
			<button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
			</div>
			<div class="toast-body">
			Usuario agregado con éxito
			</div>
			</div>
    <%	
    }
    %>
    
        <h2 class="table_title">Listado de Usuarios</h2>
        <form name="usuarios" action="">
        <div class="header-tools">
            <div class="tools">
            
                <ul>
                    <li><button onclick="javascript:enviarForma('adicionar');"><i class="material-icons">add_circle</i></button></li>
                    <li><button onclick="javascript:enviarForma('editar');"><i class="material-icons">edit</i></button></li>
                    <li><button onclick="javascript:enviarForma('eliminar');"><i class="material-icons">delete</i></button></li>
                </ul>
            </div>
            <!--<div class="search">
                <input type="text" name="" id="" class="search-input">
            </div>-->
        </div>
		
        <table class="datatable" id="example">
            <thead>
                <tr>
                    <th></th>
                    <th>C&eacute;dula</th>
                    <th>Nombre</th>
                    <th>Correo Electr&oacute;nico</th>
                    <th>Usuario</th>
                    <th>Contrase&ntilde;a</th>
                </tr>
            </thead>
            <tbody>
			<%
				
				/*Iterator<UsuarioDTO> iter = ((ArrayList<UsuarioDTO>)request.getAttribute("usuarios")).iterator();
				UsuarioDTO user;
				while(iter.hasNext()){
					user=iter.next();*/
					
				ArrayList<UsuarioDTO> users = (ArrayList<UsuarioDTO>)request.getAttribute("usuarios");
					if(users != null){
					for(UsuarioDTO user:users){
				
			%>
                        
                <tr>
                    <td class="table_checkbox"><input type="radio" name="cedUser" id="" value="<%=user.getCedulaUsuario() %>"></td>
                    <td><%=user.getCedulaUsuario() %></td>
                    <td><%=user.getNombreUsuario() %></td>
                    <td><%=user.getEmailUsuario() %></td>
                    <td><%=user.getUsuario() %></td>
                    <td><%=user.getPassword() %></td>
                </tr>
                <%}} %>
            </tbody>
        </table>
		</form>
        <div class="footer_tools">
            <div class="list_items">
                <!--Mostrar
                <select name="n-entries" id="n-entries" class="n-entries">
                    <option value="15">5</option>
                    <option value="10" selected>10</option>
                    <option value="15">15</option>
                </select>
                entradas-->
            </div>
            <div class="pages">
                <!--<ul>
                    <li><span class="active">1</span></li>
                    <li><button>2</button></li>
                    <li><button>3</button></li>
                    <li><span>...</span></li>
                    <li><button>6</button></li>
                    <li><button>7</button></li>
                </ul>-->
            </div>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap5.min.js"></script>
    <script>
        $(document).ready(function() {    
        $('#example').DataTable({
        //para cambiar el lenguaje a español
        "language": {
        "lengthMenu": "Mostrar _MENU_ registros",
        "zeroRecords": "No se encontraron resultados",
        "info": "Mostrando registros del _START_ al _END_ de _TOTAL_ registros",
        "infoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
        "infoFiltered": "(filtrado de un total de _MAX_ registros)",
        "sSearch": "Buscar:",
        "oPaginate": {
        "sFirst": "Primero",
        "sLast":"Último",
        "sNext":"Siguiente",
        "sPrevious": "Anterior"
		},
		"sProcessing":"Procesando...",
        }
    });     
});
    </script>
</body>
</html>