package servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bd.MysqlConnect;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String usuario;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		String pw = request.getParameter("password");

		MysqlConnect c = MysqlConnect.getDbCon();
		ResultSet rs = null;

		System.out.print("hola");
		if (request.getParameter("logearse") != null) {
			try {
				rs = c.query("select * from cliente WHERE email ='" + email + "' AND contrasena ='"+ pw + "' ");
				if (rs.next()) { // existe el usuario
					request.getSession().setAttribute("email_user", email);
					request.getSession().setAttribute("cliente_id", rs.getString("id"));
					request.getRequestDispatcher("jsp/perfil.jsp").forward(request, response);
				} else {
					response.sendRedirect("jsp/indexx.jsp");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		else if (request.getParameter("registrarse") !=null) {
			String user = request.getParameter("nombre");
			String surname = request.getParameter("apellido");
			String fecha = request.getParameter("fechanacimiento");
			String email1 = request.getParameter("email");
			String usuario = request.getParameter("usuario");
			String password = request.getParameter("contrasena");
			
			try {
				System.out.print("INSERT INTO `cliente`(`nombre`, `apellido`, `email`, `user`, `contrasena`) "
				 		+ "VALUES ('"+user+"','"+surname+"','"+email1+"','"+usuario+"','"+password+"')");
				 c.insert("INSERT INTO `cliente`(`nombre`, `apellido`, `email`, `user`, `contrasena`) "
				 		+ "VALUES ('"+user+"','"+surname+"','"+email1+"','"+usuario+"','"+password+"')");
				
				response.sendRedirect("indexx.jsp");	
				}
				
			 catch (SQLException e) {
				e.printStackTrace();
			
		}
		

		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		

	}

	}
	
}
