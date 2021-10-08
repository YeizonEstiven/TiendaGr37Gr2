package com.proyect.ciclo3;

import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.proyect.ciclo3.model.UsuarioDTO;
import com.proyect.ciclo3.model.UsuarioDAO;


@RestController
public class UsuarioController {
	UsuarioDAO Udao;
	
	

	@RequestMapping(value="/agregarUsuario", method=RequestMethod.GET)
	public void registrarUsuario(HttpServletRequest request,HttpServletResponse response) throws Exception {
		String cedula= request.getParameter("idUser");
    	String name= request.getParameter("nameUser");
    	String email= request.getParameter("emailUser");
    	String password= request.getParameter("passUser");
    	String user= request.getParameter("userUser");
		UsuarioDTO miUser= new UsuarioDTO(Long.parseLong(cedula),email,name,password,user);
		Udao= new UsuarioDAO();
		Udao.registrarUsuario(miUser);
		System.out.println(cedula+"-"+name);
		ArrayList<UsuarioDTO>usuarios=Udao.listaUsuarios();
		request.setAttribute("usuarios", usuarios);
		request.setAttribute("mensaje", "el usuario se agrego con exito");
		RequestDispatcher vista= request.getRequestDispatcher("datatableUser.jsp");
		vista.forward(request, response);
	}
	
	/*@RequestMapping("/consultarUsuario")
	public ArrayList<UsuarioDTO> consultarUsuario(int cedula){
		UsuarioDAO dao= new UsuarioDAO();
		return dao.consultarUsuario(cedula);
	}*/
	
	@RequestMapping(value="/listarUsuarios",method=RequestMethod.GET)
	public void listaUsuarios(HttpServletRequest request,HttpServletResponse response) throws Exception{
		String acceso="datatableUser.jsp";
		Udao = new UsuarioDAO();
		ArrayList<UsuarioDTO>usuarios=Udao.listaUsuarios();
		request.setAttribute("usuarios", usuarios);
		RequestDispatcher vista= request.getRequestDispatcher(acceso);
		vista.forward(request, response);
		
	}
	
	@RequestMapping(value="/eliminarUsuario", method=RequestMethod.GET)
	public void eliminarUsuario(HttpServletRequest request,HttpServletResponse response) throws Exception {
		System.out.println("llegue al controlador");
		int cedula=Integer.parseInt(request.getParameter("idUser"));
		Udao= new UsuarioDAO();
		Udao.eliminarUsuario(cedula);
		ArrayList<UsuarioDTO>usuarios=Udao.listaUsuarios();
		request.setAttribute("usuarios", usuarios);
		request.setAttribute("mensaje", "el usuario se elimino con exito");
		RequestDispatcher vista= request.getRequestDispatcher("datatableUser.jsp");
		vista.forward(request, response);
	}
	
	@RequestMapping(value="/editarUsuario", method=RequestMethod.GET)
	public void editarUsuario(HttpServletRequest request,HttpServletResponse response) throws Exception {
		System.out.println("llegue al controlador");
		System.out.println("llegue al controlador");
		long cedula=Long.parseLong(request.getParameter("idUser"));
    	String name= request.getParameter("nameUser");
    	String email= request.getParameter("emailUser");
    	String password= request.getParameter("passUser");
    	String user= request.getParameter("userUser");
    	UsuarioDTO usuario= new UsuarioDTO(cedula,name,email,password,user);
    	Udao= new UsuarioDAO();
    	Udao.editarUsuario(usuario);
    	ArrayList<UsuarioDTO>usuarios=Udao.listaUsuarios();
		request.setAttribute("usuarios", usuarios);
		request.setAttribute("mensaje", "el usuario se elimino con exito");
		RequestDispatcher vista= request.getRequestDispatcher("datatableUser.jsp");
		vista.forward(request, response);
		
	}
}