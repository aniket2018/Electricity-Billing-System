package registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class payTm
 */
@WebServlet("/payTm")
public class payTm extends HttpServlet {
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

		String sId = request.getParameter("id");
		String r = "Paid";
		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/electricity1?useSSL=false",
					"root", "");
			PreparedStatement pstmt = con.prepareStatement("update bill set status =? where bill_id=?");
			pstmt.setString(1, r);
			pstmt.setString(2, sId);

			pstmt.executeUpdate();

			response.sendRedirect("https://paytm.com/");  
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
