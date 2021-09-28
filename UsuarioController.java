package com.proyect.ciclo3;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.proyect.ciclo3.Model.UsuarioDTO;
import com.proyect.ciclo3.Model.UsuarioDAO;


@RestController
//@RequestMapping("/usuario")
public class UsuarioController {

	@RequestMapping(value="/agregar", method=RequestMethod.GET)
	public void registrarUsuario(HttpServletRequest request,HttpServletResponse response) throws Exception {
		String cedula= request.getParameter("idUser");
    	String name= request.getParameter("nameUser");
    	String email= request.getParameter("emailUser");
    	String password= request.getParameter("passUser");
    	String user= request.getParameter("userUser");
		UsuarioDTO miUser= new UsuarioDTO(Integer.parseInt(cedula),email,name,password,user);
		UsuarioDAO dao= new UsuarioDAO();
		dao.registrarUsuario(miUser);
		System.out.println(cedula+"-"+name);
		response.sendRedirect("Menu.jsp");
	}
	
	@RequestMapping("/consultarUsuario")
	public ArrayList<UsuarioDTO> consultarUsuario(int cedula){
		UsuarioDAO dao= new UsuarioDAO();
		return dao.consultarUsuario(cedula);
	}
	
	@RequestMapping("/listarUsuarios")
	public ArrayList<UsuarioDTO> listaUsuarios(){
		UsuarioDAO dao= new UsuarioDAO();
		return dao.listaUsuarios();
	}
	
	@RequestMapping("/eliminarUsuario")
	public void eliminarUsuario(int cedula) {
		UsuarioDAO dao= new UsuarioDAO();
		dao.eliminarUsuario(cedula);
	}
	
	@RequestMapping("/editarUsuario")
	public void editarUsuario(int cedula) {
		UsuarioDAO dao= new UsuarioDAO();
		dao.editarUsuario(cedula);
	}
}
