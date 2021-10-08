<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
	
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tienda Online</title>
    <link rel="shorcur icon" href="img/iconfruit.png" type="image/x-icon">
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
    <header>
        <nav class="menu">
            <section class="menu_container">
                <img src="img/iconfruit.png" width="40px" height="40" alt="Icono" title="IconTienda">
                <h1 class="menu_logo">Tienda GO</h1>
                <ul class="menu_links">
                    <li class="menu_item">
                        <!--<a href="#" class="menu_link">Inicio</a>*/-->
                    </li>
                    <li class="menu_item menu_item--show">
                        <a href="./listarUsuarios" class="menu_link">Usuarios <img src="icons/arrow.svg" class="menu_arrow"></a>
                        <ul class="menu_nesting">
                            <li class="menu_inside"><!--submenu-->
                                <a href="addUser.jsp" class="menu_link menu_link--inside">Crear</a>
                            </li>
                            <li class="menu_inside"><!--submenu-->
                                <a href="./listarUsuarios" class="menu_link menu_link--inside">Consultar</a>
                            </li>
                            <li class="menu_inside"><!--submenu-->
                                <a href="editUser.jsp" class="menu_link menu_link--inside">Editar</a>
                            </li>
                            <li class="menu_inside"><!--submenu-->
                                <a href="deleteUser.jsp" class="menu_link menu_link--inside">Eliminar</a>
                            </li>
                        </ul>
                    </li>
                    
                    <li class="menu_item menu_item--show">
                        <a href="#" class="menu_link">Clientes <img src="icons/arrow.svg" class="menu_arrow"></a>
                        <ul class="menu_nesting">
                            <li class="menu_inside"><!--submenu-->
                                <a href="#" class="menu_link menu_link--inside">Crear</a>
                            </li>
                            <li class="menu_inside"><!--submenu-->
                                <a href="#" class="menu_link menu_link--inside">Consultar</a>
                            </li>
                            <li class="menu_inside"><!--submenu-->
                                <a href="#" class="menu_link menu_link--inside">Editar</a>
                            </li>
                            <li class="menu_inside"><!--submenu-->
                                <a href="#" class="menu_link menu_link--inside">Eliminar</a>
                            </li>
                        </ul>
                    </li>
    
                    <li class="menu_item menu_item--show">
                        <a href="#" class="menu_link">Proveedores <img src="icons/arrow.svg" class="menu_arrow"></a>
                        <ul class="menu_nesting">
                            <li class="menu_inside"><!--submenu-->
                                <a href="#" class="menu_link menu_link--inside">Crear</a>
                            </li>
                            <li class="menu_inside"><!--submenu-->
                                <a href="#" class="menu_link menu_link--inside">Consultar</a>
                            </li>
                            <li class="menu_inside"><!--submenu-->
                                <a href="#" class="menu_link menu_link--inside">Editar</a>
                            </li>
                            <li class="menu_inside"><!--submenu-->
                                <a href="#" class="menu_link menu_link--inside">Eliminar</a>
                            </li>
                        </ul>
                    </li>
    
                    <li class="menu_item menu_item--show">
                        <a href="./listarPrxoductos" class="menu_link">Productos <img src="icons/arrow.svg" class="menu_arrow"></a>
                        <ul class="menu_nesting">
                            <li class="menu_inside"><!--submenu-->
                                <a href="addProducto" class="menu_link menu_link--inside">Agregar</a>
                            </li>
                            <li class="menu_inside"><!--submenu-->
                                <a href="./listarProductos" class="menu_link menu_link--inside">Listar</a>
                            </li>
                            <li class="menu_inside"><!--submenu-->
                                <a href="editProducto" class="menu_link menu_link--inside">Actualizar</a>
                            </li>
                            <li class="menu_inside"><!--submenu-->
                                <a href="deleteProducto" class="menu_link menu_link--inside">Eliminar</a>
                            </li>
                        </ul>
                    </li>
    
                    <li class="menu_item menu_item--show">
                        <a href="#" class="menu_link">Ventas <img src="icons/arrow.svg" class="menu_arrow"></a>
                        <ul class="menu_nesting">
                            <li class="menu_inside"><!--submenu-->
                                <a href="#" class="menu_link menu_link--inside">Subitem 1</a>
                            </li>
                            <li class="menu_inside"><!--submenu-->
                                <a href="#" class="menu_link menu_link--inside">Subitem 2</a>
                            </li>
                            <li class="menu_inside"><!--submenu-->
                                <a href="#" class="menu_link menu_link--inside">Subitem 3</a>
                            </li>
                            <li class="menu_inside"><!--submenu-->
                                <a href="#" class="menu_link menu_link--inside">Subitem 4</a>
                            </li>
                        </ul>
                    </li>
    
                    <li class="menu_item menu_item--show">
                        <a href="#" class="menu_link">Reportes <img src="icons/arrow.svg" class="menu_arrow"></a>
                        <ul class="menu_nesting">
                            <li class="menu_inside"><!--submenu-->
                                <a href="#" class="menu_link menu_link--inside">Subitem 1</a>
                            </li>
                            <li class="menu_inside"><!--submenu-->
                                <a href="#" class="menu_link menu_link--inside">Subitem 2</a>
                            </li>
                            <li class="menu_inside"><!--submenu-->
                                <a href="#" class="menu_link menu_link--inside">Subitem 3</a>
                            </li>
                            <li class="menu_inside"><!--submenu-->
                                <a href="#" class="menu_link menu_link--inside">Subitem 4</a>
                            </li>
                        </ul>
                    </li>
                </ul>

                <div class="menu_hamburguer">
                    <img src="icons/menu.svg" class="menu_img">
                </div>

            </section>
        </nav>
    </header>  
    <script src="js/app.js"></script>
</body>
</html>