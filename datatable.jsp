<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
	
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Usuarios</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="css/datatableStyle.css">
</head>
<body>
    <jsp:include page="Menu.jsp"></jsp:include>
    <div class="datatable-container">
        <h2 class="table_title">Listado de Usuarios</h2>
        <div class="header-tools">
            <div class="tools">
                <ul>
                    <li><span><input type="checkbox" name="" id=""></span></li>
                    <li><button><i class="material-icons">add_circle</i></button></li>
                    <li><button><i class="material-icons">edit</i></button></li>
                    <li><button><i class="material-icons">delete</i></button></li>
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
                    <th>C&eacute;dula</th>
                    <th>Nombre</th>
                    <th>Correo electr&oacute;nico</th>
                    <th>Usuario</th>
                    <th>Contrase&ntilde;a</th>
                </tr>
            </thead>

            <tbody>
                <tr>
                    <td class="table_checkbox"><input type="checkbox" name="" id=""></td>
                    <td>12345678</td>
                    <td>Nombre de ejemplo</td>
                    <td>ejemplo@hotmail.com</td>
                    <td>UserName</td>
                    <td>passejemplo</td>
                </tr>
                <tr>
                    <td class="table_checkbox"><input type="checkbox" name="" id=""></td>
                    <td>87654321</td>
                    <td>Nombre de ejemplo2</td>
                    <td>ejemplo2@hotmail.com</td>
                    <td>UserName2</td>
                    <td>passejemplo2</td>
                </tr>
                <tr>
                    <td class="table_checkbox"><input type="checkbox" name="" id=""></td>
                    <td>43218765</td>
                    <td>Nombre de ejemplo3</td>
                    <td>ejemplo3@hotmail.com</td>
                    <td>UserName3</td>
                    <td>passejemplo3</td>
                </tr>
                <tr>
                    <td class="table_checkbox"><input type="checkbox" name="" id=""></td>
                    <td>87432165</td>
                    <td>Nombre de ejemplo4</td>
                    <td>ejemplo4@hotmail.com</td>
                    <td>UserName4</td>
                    <td>passejemplo4</td>
                </tr>
            </tbody>
        </table>

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