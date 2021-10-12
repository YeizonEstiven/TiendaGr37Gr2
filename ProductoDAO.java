package com.proyect.ciclo3.Model;

import java.sql.PreparedStatement;

public class ProductoDAO {

	Conexion conex;
	
	public void registrarProducto (ProductoDTO producto) {
		conex= new Conexion();
		try {
			String sql="INSERT INTO productos VALUES("+producto.getCodigo_producto()+","+producto.getIva_compra()+","
						+producto.getNit_proveedor()+",'"+producto.getNombre_producto()+"',"+producto.getPrecio_compra()+","
						+producto.getPrecio_venta()+")";
			PreparedStatement consulta= conex.getConection().prepareStatement(sql);
			consulta.executeUpdate();
			consulta.close();
			conex.desconectar();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public void editarProduct (ProductoDTO producto) {
		conex= new Conexion();
		try {
			String sql= "UPDATE productos SET iva_compra="+producto.getIva_compra()+", nit_proveedor="
						+producto.getNit_proveedor()+", nombre_producto='"+producto.getNombre_producto()+"', precio_compra="
						+producto.getPrecio_compra()+", precio_venta="+producto.getPrecio_venta()+" WHERE codigo_producto="
						+producto.getCodigo_producto()+"";
			PreparedStatement consulta= conex.getConection().prepareStatement(sql);
			consulta.executeUpdate();
			consulta.close();
			conex.desconectar();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public void eliminarProducto (long codigo_producto) {
		conex= new Conexion();
		try {
			String sql= "DELETE FROM productos WHERE codigo_producto="+codigo_producto+"";
			PreparedStatement consulta= conex.getConection().prepareStatement(sql);
			consulta.executeUpdate();
			consulta.close();
			conex.desconectar();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
}
