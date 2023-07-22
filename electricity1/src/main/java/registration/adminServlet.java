package registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javax.servlet.annotation.WebServlet;
/**
 * Servlet implementation class adminServlet
 */
@WebServlet("/adminServlet")
public class adminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String uemail =request.getParameter("username");
		String upwd =request.getParameter("password");
		HttpSession session =request.getSession();
		RequestDispatcher dispatcher = null;
		Connection con =null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con =DriverManager.getConnection("jdbc:mysql://localhost:3306/electricity1?useSSL=false","root","");
			PreparedStatement pst =con.prepareStatement("select * from admin where uemail=? and upwd =?");
			pst.setString(1, uemail);
			pst.setString(2, upwd);
			
			ResultSet rs=pst.executeQuery();
			if (rs.next()) {
				session.setAttribute("Name", rs.getString("uemail"));
				dispatcher =request.getRequestDispatcher("adminIndex.jsp");
			} else {
				request.setAttribute("status","failed");
				dispatcher =request.getRequestDispatcher("adminLogin.jsp");
			}
			dispatcher.forward(request, response);
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
