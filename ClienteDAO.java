package com.proyect.ciclo3.Model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class ClienteDAO {
	
	Conexion conex;
	
	public void registrarCliente(ClienteDTO cliente) {
		conex= new Conexion();
		try {
			String sql="INSERT INTO clientes VALUES("+cliente.getCedula()+",'"+cliente.getDireccion()+"','"
						+cliente.getEmail()+"','"+cliente.getNombre_completo()+"',"+cliente.getTelefono()+")";
			PreparedStatement consulta= conex.getConection().prepareStatement(sql);
			consulta.executeUpdate();
			consulta.close();
			conex.desconectar();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public ArrayList<ClienteDTO> listarClientes(){
		conex= new Conexion();
		ArrayList<ClienteDTO> clientes= new ArrayList<ClienteDTO>();
		
		try {
			PreparedStatement consulta= conex.getConection().prepareStatement("SELECT * FROM clientes");
			ResultSet rs= consulta.executeQuery();
			while (rs.next()) {
				ClienteDTO cliente= new ClienteDTO();
				cliente.setCedula(rs.getInt("cedula_cliente"));
				cliente.setDireccion(rs.getString("direccion_cliente"));
				cliente.setEmail(rs.getString("email_cliente"));
				cliente.setNombre_completo(rs.getString("nombre_cliente"));
				cliente.setTelefono(rs.getInt("telefono_cliente"));
				clientes.add(cliente);
			}
			rs.close();
			consulta.close();
			conex.desconectar();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return clientes;
	}
	
	public ClienteDTO consultarCliente(long cedula) {
		conex= new Conexion();
		ClienteDTO cliente= null;
		try {
			PreparedStatement consulta= conex.getConection().prepareStatement("SELECT * FROM clientes WHERE cedula_cliente="+cedula);
			ResultSet rs= consulta.executeQuery();
			while (rs.next()) {
				long cedula_cliente= Integer.parseInt(rs.getString("cedula_cliente"));
				String direccion= rs.getString("direccion_cliente");
				String email= rs.getString("email_cliente");
				String nombre_completo= rs.getString("nombre_cliente");
				int telefono= Integer.parseInt(rs.getString("telefono_cliente"));
				cliente= new ClienteDTO(cedula_cliente, direccion, email, nombre_completo, telefono);
			}
			rs.close();
			consulta.close();
			conex.desconectar();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return cliente;
	}
	
	public void eliminarCliente(long cedula) {
		conex= new Conexion();
		try {
			String sql="DELETE FROM clientes WHERE cedula_cliente="+cedula;
			PreparedStatement consulta= conex.getConection().prepareStatement(sql);
			consulta.executeUpdate();
			consulta.close();
			conex.desconectar();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public void editarCliente(ClienteDTO cliente) {
		conex= new Conexion();
		try {
			String sql= "UPDATE clientes SET direccion_cliente='"+cliente.getDireccion()+"',email_cliente='"
						+cliente.getEmail()+"',nombre_cliente='"+cliente.getNombre_completo()+"',telefono_cliente="
						+cliente.getTelefono()+" WHERE cedula_cliente="+cliente.getCedula()+"";
			PreparedStatement consulta= conex.getConection().prepareStatement(sql);
			consulta.executeUpdate();
			consulta.close();
			conex.desconectar();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
