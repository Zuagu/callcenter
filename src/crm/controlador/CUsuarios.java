package crm.controlador;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import crm.modelo.ModUsuarios;

/**
 * Servlet implementation class CUsuarios
 */
@WebServlet("/CUsuarios")
public class CUsuarios extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Resource (name="jdbc/call_center")
	private DataSource dt;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CUsuarios() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			ModUsuarios u = new ModUsuarios(dt);
			String usuarios = u.lista_usuaios();
			response.setContentType("text/html; charset=UTF-8");
	        PrintWriter writer = response.getWriter();
	        writer.print(usuarios);
	        writer.flush();
	        writer.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String accion = request.getParameter("acction");
		if("".equals(accion)) { 
			
		}
	}

}
