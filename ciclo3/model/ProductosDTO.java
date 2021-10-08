package com.proyect.ciclo3.model;

public class ProductosDTO{

    private long codigoProducto;
    private double ivaProducto;
    private long nitProveedor;
    private String nombreProducto;
    private double precioCompra;
    private double precioVenta;
    	
    

	public ProductosDTO(long codigoProducto, double ivaProducto, long nitProveedor, String nombreProducto,
			double precioCompra, double precioVenta) {
		super();
		this.codigoProducto = codigoProducto;
		this.ivaProducto = ivaProducto;
		this.nitProveedor = nitProveedor;
		this.nombreProducto = nombreProducto;
		this.precioCompra = precioCompra;
		this.precioVenta = precioVenta;
	}

	public ProductosDTO() {
		
	}
	
	
	public long getCodigoProducto() {
		return codigoProducto;
	}

	public void setCodigoProducto(long codigoProducto) {
		this.codigoProducto = codigoProducto;
	}

	public double getIvaProducto() {
		return ivaProducto;
	}

	public void setIvaProducto(double ivaProducto) {
		this.ivaProducto = ivaProducto;
	}

	public long getNitProveedor() {
		return nitProveedor;
	}

	public void setNitProveedor(long nitProveedor) {
		this.nitProveedor = nitProveedor;
	}

	public String getNombreProducto() {
		return nombreProducto;
	}

	public void setNombreProducto(String nombreProducto) {
		this.nombreProducto = nombreProducto;
	}

	public double getPrecioCompra() {
		return precioCompra;
	}

	public void setPrecioCompra(double precioCompra) {
		this.precioCompra = precioCompra;
	}

	public double getPrecioVenta() {
		return precioVenta;
	}

	public void setPrecioVenta(double precioVenta) {
		this.precioVenta = precioVenta;
	}   
    
    
}