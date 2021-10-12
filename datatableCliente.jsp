<%@page import="java.util.ArrayList"%>
<%@page import="com.proyect.ciclo3.Model.ClienteDTO"%>
<%@page import="java.util.Iterator"%>
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
    			document.clientes.action='addCliente.jsp';
    			document.clientes.submit();
    		}
    		if(destino=='editar'){
    			if(document.clientes.cedCliente.value!=''){
    				document.clientes.action='/ciclo3/consularCliente';
        			document.clientes.submit();
    			}else{
    				alert('Seleccione un registro para editar');
    			}
    		}
    		if(destino=='eliminar'){
    			if(document.clientes.cedCliente.value!=''){
    				document.clientes.action='deleteCliente.jsp';
    				document.clientes.submit();
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
    
        <h2 class="table_title">Listado de Clientes</h2>
        <form name="clientes" action="">
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
                    <th>Direccion</th>
                    <th>Correo Electrónico</th>
                    <th>Nombre Completo</th>
                    <th>Telefono</th>
                </tr>
            </thead>
             <tbody>
			<%
				Iterator<ClienteDTO>iter= ((ArrayList<ClienteDTO>)request.getAttribute("clientes")).iterator();
				ClienteDTO cliente;
				while(iter.hasNext()){
					cliente=iter.next();
			%>
           
                <tr>
                    <td class="table_checkbox"><input type="radio" name="cedCliente" id="" value="<%=cliente.getCedula()%>"></td>
                    <td><%=cliente.getCedula()%></td>
                    <td><%=cliente.getDireccion()%></td>
                    <td><%=cliente.getEmail()%></td>
                    <td><%=cliente.getNombre_completo()%></td>
                    <td><%=cliente.getTelefono()%></td>
                </tr>
                <%}%>
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