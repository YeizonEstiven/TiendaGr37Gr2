package com.proyect.ciclo3.Model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ProveedorDAO {
	Conexion conex;

	public void registrarProveedor(ProveedorDTO proveedor) {
		conex= new Conexion();
		try {
			String sql= "INSERT INTO proveedores VALUES("+proveedor.getNIT()+",'"+proveedor.getNombre()+"','"
						+proveedor.getDireccion()+"',"+proveedor.getTelefono()+",'"+proveedor.getCiudad()+"')";
			PreparedStatement consulta= conex.getConection().prepareStatement(sql);
			consulta.executeUpdate();
			consulta.close();
			conex.desconectar();
		} catch (Exception e) {
			System.out.println("no se logro la operacion");
		}
	}
	
	public ArrayList<ProveedorDTO> listarProveedores(){
		ArrayList<ProveedorDTO> proveedores= new ArrayList<ProveedorDTO>();
		conex= new Conexion();
		try {
			PreparedStatement consulta= conex.getConection().prepareStatement("SELECT * FROM proveedores");
			ResultSet rs= consulta.executeQuery();
			while (rs.next()) {
				ProveedorDTO prov= new ProveedorDTO();
				prov.setNIT(Long.parseLong(rs.getString("nit_proveedor")));
				prov.setDireccion(rs.getString("direccion_proveedor"));
				prov.setCiudad(rs.getString("ciudad_proveedor"));
				prov.setNombre(rs.getString("nombre_proveedor"));
				prov.setTelefono(Long.parseLong(rs.getString("telefono_proveedor")));
			}
			rs.close();
			consulta.close();
			conex.desconectar();
		} catch (Exception e) {
			System.out.print("no se logro la operacion "+e);
		}
		return proveedores;
	}
	
	public ProveedorDTO consultarProveedor(long NIT) {
		conex= new Conexion();
		ProveedorDTO proveedor= new ProveedorDTO();
		
		try {
			String sql= "SELECT * FROM proveedores WHERE nit_proveedor="+NIT;
			PreparedStatement consulta= conex.getConection().prepareStatement(sql);
			ResultSet res= consulta.executeQuery();
			while (res.next()) {
				
				proveedor.setNIT(NIT);
				proveedor.setNombre(res.getString("nombre_proveedor"));
				proveedor.setDireccion(res.getString("direccion_proveedor"));
				proveedor.setTelefono(Long.parseLong(res.getString("telefono_proveedor")));
				proveedor.setCiudad(res.getString("ciudad_proveedor"));
			}
			res.close();
			consulta.close();
			conex.desconectar();
		} catch (Exception e) {
			System.out.println("No se logro la operacion");
		}
		return proveedor;
	}
	
	public void editarProveedor(ProveedorDTO proveedor) {
		conex= new Conexion();
		try {
			String sql= "UPDATE proveedores SET nit_proveedor="+proveedor.getNIT()+", direccion_proveedor='"
						+proveedor.getDireccion()+"', ciudad_proveedor='"+proveedor.getCiudad()+"', nombre_proveedor='"
						+proveedor.getNombre()+"', telefono_proveedor="+proveedor.getTelefono()+"";
			PreparedStatement consulta= conex.getConection().prepareStatement(sql);
			consulta.executeUpdate();
			consulta.close();
			conex.desconectar();
		} catch (Exception e) {
			System.out.println("no se logro la operacion");
		}
	}
	
	public void eliminarProveedor(long NIT) {
		conex= new Conexion();
		try {
			String sql= "DELETE FROM proveedores WHERE nit_proveedor="+NIT;
			PreparedStatement consulta= conex.getConection().prepareStatement(sql);
			consulta.executeUpdate();
			consulta.close();
			conex.desconectar();
		} catch (Exception e) {
			System.out.println("no se logro la operacion");
		}
	}
	
}
