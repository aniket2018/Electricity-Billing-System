package registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javax.servlet.annotation.WebServlet;

/**
 * Servlet implementation class declineRequest
 */
@WebServlet("/declineRequest")
public class declineRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con;
	Statement stat;
	PreparedStatement pst;
	ResultSet rs;
	int row;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String sId = request.getParameter("email");
		String name = request.getParameter("name");
		String r = "Decline";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/electricity1?useSSL=false",
					"root", "");
			String sql = "Update newconnection set request=" + r + " where cemail=" + sId + "and cname=" + name;
			PreparedStatement pstmt = con.prepareStatement("update newconnection set request =? where cname=? and cemail=?");
			pstmt.setString(1, r);
			pstmt.setString(2, name);
			pstmt.setString(3, sId);

			pstmt.executeUpdate();

//			PreparedStatement pst=con.prepareStatement(sql);
//			pst.executeUpdate();

//			stat = con.createStatement();
//			stat.executeUpdate("Update newconnection set request='"+r+" where cemail="+sId+"and cname="+name+"'");
//			out.println(sId);
			response.sendRedirect("ConnectionRequest.jsp");
			pstmt.close();
			con.close();
//			
//			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
