package com.proyect.ciclo3;

import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.proyect.ciclo3.Model.ClienteDAO;
import com.proyect.ciclo3.Model.ClienteDTO;

@RestController
public class ClienteController {

	ClienteDAO Cdao;
	
	@RequestMapping(value="/agregarCliente", method = RequestMethod.GET)
	public void registrarCliente(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ClienteDTO cliente= new ClienteDTO();
		Cdao= new ClienteDAO();
		cliente.setCedula(Long.parseLong(request.getParameter("idCliente")));
		cliente.setDireccion(request.getParameter("dirCliente"));
		cliente.setEmail(request.getParameter("emailCliente"));
		cliente.setNombre_completo(request.getParameter("nameCliente"));
		cliente.setTelefono(Long.parseLong(request.getParameter("telCliente")));
		Cdao.registrarCliente(cliente);
		ArrayList<ClienteDTO> clientes= Cdao.listarClientes();
		request.setAttribute("clientes", clientes);
		request.setAttribute("mensaje", "El Cliente se agrego con exito");
		RequestDispatcher vista= request.getRequestDispatcher("datatableCliente.jsp");
		vista.forward(request, response);
	}
	
	@RequestMapping(value="/editarCliente", method= RequestMethod.GET)
	public void editarCliente(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ClienteDTO cliente= new ClienteDTO();
		Cdao= new ClienteDAO();
		cliente.setCedula(Long.parseLong(request.getParameter("idCliente")));
		cliente.setDireccion(request.getParameter("dirCliente"));
		cliente.setEmail(request.getParameter("emailCliente"));
		cliente.setNombre_completo(request.getParameter("nameCliente"));
		cliente.setTelefono(Long.parseLong(request.getParameter("telCliente")));
		Cdao.editarCliente(cliente);
		ArrayList<ClienteDTO> clientes= Cdao.listarClientes();
		request.setAttribute("clientes", clientes);
		request.setAttribute("mensaje", "El cliente se edito con exito");
		RequestDispatcher vista= request.getRequestDispatcher("datatableCliente.jsp");
		vista.forward(request, response);
	}
	
	@RequestMapping(value="/listarClientes", method= RequestMethod.GET)
	public void listarClientes(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Cdao= new ClienteDAO();
		ArrayList<ClienteDTO> clientes= Cdao.listarClientes();
		request.setAttribute("clientes", clientes);
		RequestDispatcher vista= request.getRequestDispatcher("datatableCliente.jsp");
		vista.forward(request, response);
	}
	
	@RequestMapping(value="/eliminarCliente", method= RequestMethod.GET)
	public void eliminarCliente(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Cdao= new ClienteDAO();
		long cedula= Long.parseLong(request.getParameter("idCliente"));
		Cdao.eliminarCliente(cedula);
		ArrayList<ClienteDTO> clientes= Cdao.listarClientes();
		request.setAttribute("clientes", clientes);
		request.setAttribute("mensaje", "El Cliente se elimino con exito");
		RequestDispatcher vista= request.getRequestDispatcher("datatableCliente.jsp");
		vista.forward(request, response);
	}
	
	/*public void consultarCliente(HttpServletRequest request, HttpServletResponse response) {
		
	}*/
}
