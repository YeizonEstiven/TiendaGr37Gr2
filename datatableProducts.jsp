<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.proyect.ciclo3.model.ProductosDAO"%>
<%@page import="com.proyect.ciclo3.model.ProductosDTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset = "UTF-8">
    <meta http-equiv = "X-UA-Compatible" content = "IE=edge">
    <meta name = "viewport" content = "width=device-width, initial-scale=1.0">
    <title> Productos </title>
    <link href = "https://fonts.googleapis.com/icon?family=Material+Icons" rel = "stylesheet">
    <link rel = "stylesheet" href = "css/datatableStyle.css">
    <link href = "https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel = "stylesheet" integrity = "sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link rel = "stylesheet" href = "https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css">
    <script type = "text/javascript">
        function enviarForma (destino){
            if (destino == 'adicionar'){
                document.productos.action = 'addProducto.jsp';
                document.productos.submit();
            }
            if (destino == 'editar'){
                if (document.productos.codeProducto.value != ''){
                    document.productos.action = 'editProducto.jsp';
                    document.productos.submit();
                }else{
                    alert ('Seleccione un registro para editar');
                }
            }
            if (destino == 'eliminar'){
                if (document.productos.codeProducto.value != ''){
                    document.productos.action = 'deleteProducto.jsp';
                    document.productos.submit();
                }else{
                    alert ('Seleccione un registro para eliminar')
                }
            }
        }
    </script>
</head>
<body>
    <jsp:include page = "Menu.jsp"></jsp:include>
    
    <div class = "datatable-container">
    <%
        if(request.getAttribute("mensaje")!=null){
    %>
    <!--<div style="color: green;"><%=request.getAttribute("mensaje") %></div>-->
    <!--mensaje de alerta pop up*-->
    <div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
			<div class="toast-header">
			<img src="..." class="rounded me-2" alt="...">
			<strong class="me-auto">Productos</strong>
			<small>Just now</small>
			<button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
			</div>
			<div class="toast-body">
			Producto agregado con &eacute;xito
			</div>
			</div>
    <%	
    }
    %>
    
        <h2 class="table_title">Listado de Productos</h2>
        <form name="productos" action="">
        <div class="header-tools">
            <div class="tools">
            
                <ul>
                    <li><button onclick="javascript:enviarForma('adicionar');"><i class="material-icons">add_circle</i></button></li>
                    <li><button onclick="javascript:enviarForma('editar');"><i class="material-icons">edit</i></button></li>
                    <li><button onclick="javascript:enviarForma('eliminar');"><i class="material-icons">delete</i></button></li>
                    <li><button onclick="javascript:enviarForma('csv');"><i class="material-icons">note_add</i></button></li>
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
                    <th>C&oacute;digo</th>
                    <th>IVA</th>
                    <th>Nit Proveedor</th>
                    <th>Nombre Producto</th>
                    <th>Precio Compra</th>
                    <th>Precio Venta</th>
                </tr>
            </thead>
            <tbody>
			<%
				
				/*Iterator<UsuarioDTO> iter = ((ArrayList<UsuarioDTO>)request.getAttribute("usuarios")).iterator();
				UsuarioDTO user;
				while(iter.hasNext()){
					user=iter.next();*/
					
				ArrayList<ProductosDTO> productos = (ArrayList<ProductosDTO>)request.getAttribute("productos");
					if(productos != null){
					for(ProductosDTO producto:productos){				
			%>
                        
                <tr>
                    <td class="table_checkbox"><input type="radio" name="codeProducto" id="" value="<%=producto.getCodeProducto() %>"></td>
                    <td><%=producto.getCodeProducto()%></td>
                    <td><%=producto.getIvaProducto()%></td>
                    <td><%=producto.getNombreProducto()%></td>
                    <td><%=producto.getNitProveedor()%></td>
                    <td><%=producto.getPrecioCompra()%></td>
                    <td><%=producto.getPrecioVenta()%></td>
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
        //para cambiar el lenguaje a espa�ol
        "language": {
        "lengthMenu": "Mostrar _MENU_ registros",
        "zeroRecords": "No se encontraron resultados",
        "info": "Mostrando registros del _START_ al _END_ de _TOTAL_ registros",
        "infoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
        "infoFiltered": "(filtrado de un total de _MAX_ registros)",
        "sSearch": "Buscar:",
        "oPaginate": {
        "sFirst": "Primero",
        "sLast":"�ltimo",
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