package com.proyect.ciclo3.model;

import java.sql.*;
import java.util.ArrayList;

import javax.swing.JOptionPane;


public class ProductosDAO {
	
	
	
	public ArrayList<UsuarioDTO> listaUsuarios(){
		ArrayList<UsuarioDTO> listadoUsuarios = new ArrayList<UsuarioDTO>();
		Conexion conex = new Conexion();
		try {
			PreparedStatement consulta = conex.getConection().prepareStatement("SELECT * FROM usuarios");
			ResultSet res = consulta.executeQuery();
			while(res.next()) {
				UsuarioDTO usuario = new UsuarioDTO();
				usuario.setCedulaUsuario(Integer.parseInt(res.getString("cedula_usuario")));
				usuario.setEmailUsuario(res.getString("email_usuario"));
				usuario.setNombreUsuario(res.getString("nombre_usuario"));
				usuario.setPassword(res.getString("password"));
				usuario.setUsuario(res.getString("usuario"));
				listadoUsuarios.add(usuario);
			}
			res.close();
			consulta.close();
			conex.desconectar();
		}catch(Exception e) {
			JOptionPane.showMessageDialog(null, "No se pudo consultar " +e);
		}
		return listadoUsuarios;
	}
	
	public void registrarUsuario(UsuarioDTO usuario) {
		Conexion conex= new Conexion();
		try {
			Statement st= conex.getConection().createStatement();
			st.executeUpdate("INSERT INTO usuarios VALUES ('"+usuario.getCedulaUsuario()+"', '"
			        +usuario.getEmailUsuario()+"', '"+usuario.getNombreUsuario()+"','"+usuario.getPassword()+"','"+usuario.getUsuario()+"')");
			System.out.println("se logro la conexion");
			st.close();
			conex.desconectar();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			System.out.println("no se logro");

		}
	}
	
	public UsuarioDTO consultarUsuario(int cedula){
		UsuarioDTO usuario = null;
		Conexion conex= new Conexion();
		int cedulaU;
		String emailU;
		String nameU;
		String passU;
		String U;
		
		try {
			PreparedStatement consulta= conex.getConection().prepareStatement("SELECT * FROM usuarios WHERE cedula_usuario = ? ");
			ResultSet res= consulta.executeQuery();
			if (res.next()) {
				cedulaU=Integer.parseInt(res.getString("cedula_usuario"));
				emailU=res.getString("email_usuario");
				nameU=res.getString("nombre_usuario");
				passU=res.getString("password");
				U=res.getString("usuario");
				usuario= new UsuarioDTO(cedulaU,emailU,nameU,passU,U);
			}
			res.close();
			consulta.close();
			conex.desconectar();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return usuario;
	}
	
	public void eliminarUsuario(int cedula) {
		Conexion conex= new Conexion();
		try {
			String query="DELETE FROM usuarios WHERE cedula_usuario="+cedula;
			PreparedStatement consulta= conex.getConection().prepareStatement(query);
			consulta.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public void editarUsuario(UsuarioDTO miUser) {
		Conexion conex= new Conexion();
		try {
			Statement st= conex.getConection().createStatement();
			st.executeUpdate("UPDATE usuarios SET email_usuario='"
					+miUser.getEmailUsuario()+"',nombre_usuario='"+miUser.getNombreUsuario()+"',password='"+miUser.getPassword()+"',usuario='"
					+miUser.getUsuario()+"' WHERE cedula_usuario="+miUser.getCedulaUsuario());

			st.close();
			conex.desconectar();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}
}

