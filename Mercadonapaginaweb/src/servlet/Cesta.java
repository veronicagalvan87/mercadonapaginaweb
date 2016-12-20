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
 * Servlet implementation class Cesta
 */
@WebServlet("/Cesta")
public class Cesta extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Cesta() {
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
		
		
		MysqlConnect c = MysqlConnect.getDbCon();
		ResultSet rs = null;
		String cliente_id = (String) request.getSession().getAttribute("cliente_id");
		
		
		if (request.getParameter("boton").equals("ANADIR")) {
			
			try {
							
				rs = c.query("SELECT * FROM pedido WHERE confirmado = 0 AND cliente_id ="+cliente_id);
				
				if (rs.next()) {

					String ped = rs.getString("id");
					String prod = request.getParameter("idp");
					c.insert("INSERT INTO producto_pedido (id_pedido, id_producto,cantidad)VALUES (" + ped + "," + prod + ",1)");

					

				} else {
					String id = request.getParameter("id");

					c.insert("INSERT INTO `pedido`(`id`, `fecha`, `cliente_id`, `confirmado`)VALUES (" + id + ","
							+ "CURRENT_DATE()" + "," + cliente_id + ", 0 )");


					rs = c.query("SELECT * FROM pedido WHERE confirmado = 0 AND cliente_id ="
							+ cliente_id);

					if (rs.next()) {
						int ped = rs.getInt("id");
						String prod = request.getParameter("idp");
						c.insert("INSERT INTO producto_pedido (id_pedido, id_producto, cantidad)VALUES (" + ped + "," + prod
								+ ",1)");							
					}


					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			response.sendRedirect("GestionProductos");

			
		}
		else if (request.getParameter("boton").equals("VERCESTA")) {
			try {
				rs = c.query("SELECT p.id,pr.nombre from cliente c " + "inner join pedido p on p.cliente_id=c.id "
				        + "inner join pedido_producto pp on pp.pedido_id=p.id "
				        + "INNER join producto pr on pp.producto_id=pr.id where c.id="+cliente_id);
				
				
				//Tengo que mandar el usuario a la vista
				request.setAttribute("productosquepaso", rs);
				request.getRequestDispatcher("jsp/pedidos.jsp").forward(request, response);
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
