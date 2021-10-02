package com.proyect.ciclo3.Model;

public class ClienteDTO {
	private long cedula;
	private String direccion;
	private String email;
	private String nombre_completo;
	private long telefono;
	
	public ClienteDTO(long cedula, String direccion, String email, String nombre_completo, long telefono) {
		super();
		this.cedula = cedula;
		this.direccion = direccion;
		this.email = email;
		this.nombre_completo = nombre_completo;
		this.telefono = telefono;
	}
	
	public ClienteDTO() {
		
	}

	public long getCedula() {
		return cedula;
	}

	public void setCedula(long cedula) {
		this.cedula = cedula;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNombre_completo() {
		return nombre_completo;
	}

	public void setNombre_completo(String nombre_completo) {
		this.nombre_completo = nombre_completo;
	}

	public long getTelefono() {
		return telefono;
	}

	public void setTelefono(long telefono) {
		this.telefono = telefono;
	}
	
}
