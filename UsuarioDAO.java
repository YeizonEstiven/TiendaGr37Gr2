package com.proyect.ciclo3.Model;

import java.sql.*;
import java.util.ArrayList;

import javax.swing.JOptionPane;


public class UsuarioDAO {
	
	
	
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
	
	public ArrayList<UsuarioDTO> consultarUsuario(int cedula){
		ArrayList<UsuarioDTO> miUser= new ArrayList<UsuarioDTO>();
		Conexion conex= new Conexion();
		
		try {
			PreparedStatement consulta= conex.getConection().prepareStatement("SELECT * FROM usuarios where cedula_usuario = ? ");
			consulta.setInt(1, cedula);
			ResultSet res= consulta.executeQuery();
			
			if (res.next()) {
				UsuarioDTO usuario= new UsuarioDTO();
				usuario.setCedulaUsuario(Integer.parseInt(res.getString("cedula_usuario")));
				usuario.setEmailUsuario(res.getString("email_usuario"));
				usuario.setNombreUsuario(res.getString("nombre_usuario"));
				usuario.setPassword(res.getString("password"));
				usuario.setUsuario(res.getString("usuario"));
				
				miUser.add(usuario);
			}
			res.close();
			consulta.close();
			conex.desconectar();
			
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, "No se pudo consultar la Persona\n"+e);
		}
		return miUser;
	}
	
	public void eliminarUsuario(int cedula) {
		Conexion conex= new Conexion();
		try {
			String query="DELETE FROM usuarios WHERE cedula_usuario=?";
			PreparedStatement consulta= conex.getConection().prepareStatement(query);
			consulta.setInt(1, cedula);
			consulta.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public void editarUsuario(int cedula) {
		Conexion conex= new Conexion();
		UsuarioDTO miUser= new UsuarioDTO();
		try {
			Statement st= conex.getConection().createStatement();
			st.executeUpdate("UPDATE usuarios SET email_usuario='"
					+miUser.getEmailUsuario()+"',nombre_usuario='"+miUser.getNombreUsuario()+"',password='"+miUser.getPassword()+"',usuario='"
					+miUser.getUsuario()+"'WHERE cedula_usuario='"+miUser.getCedulaUsuario());
			JOptionPane.showMessageDialog(null, "Se ha registrado Exitosamente","Información",JOptionPane.INFORMATION_MESSAGE);
			st.close();
			conex.desconectar();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			JOptionPane.showMessageDialog(null, "No se modifico la persona");
		}
	}
}


