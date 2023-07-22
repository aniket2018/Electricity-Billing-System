package registration;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javax.servlet.annotation.WebServlet;

/**
 * Servlet implementation class registrationServlet
 */
@WebServlet("/NewConnectionRequest")

public class NewConnectionRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cno = request.getParameter("cno");
		String cname = request.getParameter("cname");
		String cemail = request.getParameter("cemail");
		String caddress = request.getParameter("caddress");
		String cmobile = request.getParameter("cmobile");
		
		RequestDispatcher dispatcher = null;
		Connection con=null;
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con =DriverManager.getConnection("jdbc:mysql://localhost:3306/electricity1?useSSL=false","root","");
			PreparedStatement pst=con.prepareStatement("insert into newconnection(cname,cemail,caddress,cmobile,cno)values(?,?,?,?,?)");
			pst.setString(1,cname);
			pst.setString(2,cemail);
			pst.setString(3,caddress);
			pst.setString(4,cmobile);
			pst.setString(5,cno);
			
			
			int rowCount=pst.executeUpdate();
			dispatcher=request.getRequestDispatcher("index.jsp");
			if(rowCount>0) {
				request.setAttribute("status", "success");
			}
			else
			{
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}

}
