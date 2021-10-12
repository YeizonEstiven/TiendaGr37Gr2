package com.proyect.ciclo3.Model;

import java.sql.*;

public class Conexion {

	static String bd = "grupo37_equipo2";
	static String user = "admin";
	static String password = "Admin123$";
	static String url = "camiloc2.czo3ixoe3xoe.us-east-1.rds.amazonaws.com"+bd;
	
	Connection conect = null;
	public Conexion() {
		try {
		Class.forName("org.mariadb.jdbc.Driver");
		conect = DriverManager.getConnection(url,user,password);
		}catch(SQLException e){
			System.out.println(e);
		}catch(ClassNotFoundException ex) {
			System.out.println(ex);
		}
	}
	public Connection getConection() {
		return conect;
	}
	public void desconectar() {
		conect = null;
	}
}
