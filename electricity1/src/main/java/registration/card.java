package registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class card
 */
@WebServlet("/card")
public class card extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String date = request.getParameter("date");
		System.out.println(date);
		String cvv = request.getParameter("cvv");
		String sId = request.getParameter("id");
		String r = "Paid";
		RequestDispatcher dispatcher = null;
		Connection con = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/electricity1?useSSL=false", "root", "");
			PreparedStatement pst = con.prepareStatement("insert into card(name,date,cvv,bill_id)values(?,?,?,?)");
			pst.setString(1, name);
			pst.setString(2, date);
			pst.setString(3, cvv);
			pst.setString(4, sId);

			int rowCount = pst.executeUpdate();
			if (rowCount > 0) {

				try {

					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection("jdbc:mysql://localhost:3306/electricity1?useSSL=false", "root",
							"");
					pst = con.prepareStatement("update bill set status =? where bill_id=?");
					pst.setString(1, r);
					pst.setString(2, sId);

					pst.executeUpdate();
					if (rowCount > 0) {
						dispatcher = request.getRequestDispatcher("paymentHistory.jsp");
					}
					pst.close();
					con.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
				request.setAttribute("status", "success");
			} else {
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
