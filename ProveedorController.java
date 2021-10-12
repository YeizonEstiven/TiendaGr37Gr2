package com.proyect.ciclo3;

import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.proyect.ciclo3.Model.ProveedorDAO;
import com.proyect.ciclo3.Model.ProveedorDTO;

@RestController
public class ProveedorController {
	
	ProveedorDAO Pdao;
	
	
	@RequestMapping(value="/agregarProveedor", method= RequestMethod.GET)
	public void registrarProveedor(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ProveedorDTO proveedor= new ProveedorDTO();
		Pdao = new ProveedorDAO();
		proveedor.setNIT(Long.parseLong(request.getParameter("idProveedor")));
		proveedor.setNombre(request.getParameter("nameProveedor"));
		proveedor.setDireccion(request.getParameter("dirProveedor"));
		proveedor.setTelefono(Long.parseLong(request.getParameter("telProveedor")));
		proveedor.setCiudad(request.getParameter("ciudadProveedor"));
		Pdao.registrarProveedor(proveedor);
	}
	
	@RequestMapping(value="/editarProveedor", method= RequestMethod.GET)
	public void editarProveedor(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Pdao = new ProveedorDAO();
		ProveedorDTO proveedor = new ProveedorDTO();
		proveedor.setNIT(Long.parseLong(request.getParameter("idProveedor")));
		proveedor.setNombre(request.getParameter("nameProveedor"));
		proveedor.setDireccion(request.getParameter("dirProveedor"));
		proveedor.setTelefono(Long.parseLong(request.getParameter("telProveedor")));
		proveedor.setCiudad(request.getParameter("ciudadProveedor"));
		Pdao.editarProveedor(proveedor);
	}
	
	@RequestMapping(value="/eliminarProveedor", method= RequestMethod.GET)
	public void eliminarProveedor(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Pdao = new ProveedorDAO();
		Long NIT= Long.parseLong(request.getParameter("idProveedor"));
		Pdao.eliminarProveedor(NIT);
		
	}
	
	@RequestMapping(value="/listarProveedores", method= RequestMethod.GET)
	public void listaProveedores(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Pdao = new ProveedorDAO();
		ArrayList<ProveedorDTO> proveedores= Pdao.listarProveedores();
		request.setAttribute("proveedores", proveedores);
		RequestDispatcher vista = request.getRequestDispatcher("datatableProveedor.jsp");
		vista.forward(request, response);
	}
	
	@RequestMapping(value="/consultarProveedor", method= RequestMethod.GET)
	public void consultarProveedor(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Pdao = new ProveedorDAO();
		long nit= Long.parseLong(request.getParameter("nitProveedor"));
		ProveedorDTO proveedor= Pdao.consultarProveedor(nit);
		request.setAttribute("proveedor", proveedor);
		RequestDispatcher vista= request.getRequestDispatcher("editProveedor.jsp");
		vista.forward(request, response);
	}
	
}
