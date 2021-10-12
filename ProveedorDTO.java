package com.proyect.ciclo3.Model;

public class ProveedorDTO {

	private long NIT;
	private String nombre;
	private String direccion;
	private long telefono;
	private String ciudad;
	
	public ProveedorDTO(long NIT, String nombre, String direccion, long telefono, String ciudad) {
		this.NIT= NIT;
		this.nombre = nombre;
		this.direccion = direccion;
		this.telefono = telefono;
		this.ciudad = ciudad;
	}

	public ProveedorDTO() {
		
	}

	public long getNIT() {
		return NIT;
	}

	public void setNIT(long nIT) {
		NIT = nIT;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public long getTelefono() {
		return telefono;
	}

	public void setTelefono(long telefono) {
		this.telefono = telefono;
	}

	public String getCiudad() {
		return ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}
	
	
	
}
