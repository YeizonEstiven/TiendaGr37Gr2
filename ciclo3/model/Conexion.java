package com.proyect.ciclo3.model;

import java.sql.*;
public class Conexion {

	static String bd = "tienda_generica_g2";
	static String user = "root";
	static String password = "";
	static String url = "jdbc:mysql://localhost:3306/"+bd;
	
	Connection conect = null;
	public Conexion() {

	}
	public Connection getConection() {
		try {
		Class.forName("com.mysql.jdbc.Driver");
		conect = DriverManager.getConnection(url,user,password);
		}catch(SQLException e){
			e.printStackTrace();
		}catch(ClassNotFoundException ex) {
			ex.printStackTrace();
		}
		return conect;
	}
	public void desconectar() {
		conect = null;
	}
}