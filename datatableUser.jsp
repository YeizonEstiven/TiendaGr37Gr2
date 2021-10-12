<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.proyect.ciclo3.Model.UsuarioDAO"%>
<%@page import="com.proyect.ciclo3.Model.UsuarioDTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="css/datatableStyle.css">
    <script type="text/javascript">
    	function enviarForma(destino){
    		if(destino=='adicionar'){
    			document.usuarios.action='addUser.jsp';
    			document.usuarios.submit();
    		}
    		if(destino=='editar'){
    			if(document.usuarios.cedUser.value!=''){
    				document.usuarios.action='/ciclo3/consultarUser';
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
    				alet('Seleccione un registro para eliminar')
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
    		<div style="font-color:red"><%=request.getAttribute("mensaje") %></div>
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
            <div class="search">
                <input type="text" name="" id="" class="search-input">
            </div>
        </div>
		
        <table class="datatable">
            <thead>
                <tr>
                    <th></th>
                    <th>Cédula</th>
                    <th>Nombre</th>
                    <th>Correo Electrónico</th>
                    <th>Usuario</th>
                    <th>Password</th>
                </tr>
            </thead>
             <tbody>
			<%
				Iterator<UsuarioDTO>iter=((ArrayList<UsuarioDTO>)request.getAttribute("usuarios")).iterator();
				UsuarioDTO user;
				while(iter.hasNext()){
					user=iter.next();
				
			%>
           
                <tr>
                    <td class="table_checkbox"><input type="radio" name="cedUser" id="" value="<%=user.getCedulaUsuario() %>"></td>
                    <td><%=user.getCedulaUsuario() %></td>
                    <td><%=user.getNombreUsuario() %></td>
                    <td><%=user.getEmailUsuario() %></td>
                    <td><%=user.getUsuario() %></td>
                    <td><%=user.getPassword() %></td>
                </tr>
                <%} %>
            </tbody>
        </table>
		</form>
        <div class="footer_tools">
            <div class="list_items">
            
                Mostrar
                <select name="n-entries" id="n-entries" class="n-entries">
                    <option value="15">5</option>
                    <option value="10" selected>10</option>
                    <option value="15">15</option>
                </select>
                entradas
            </div>
            <div class="pages">
                <ul>
                    <li><span class="active">1</span></li>
                    <li><button>2</button></li>
                    <li><button>3</button></li>
                    <li><span>...</span></li>
                    <li><button>6</button></li>
                    <li><button>7</button></li>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>