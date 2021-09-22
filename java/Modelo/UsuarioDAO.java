package Modelo;

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
}
