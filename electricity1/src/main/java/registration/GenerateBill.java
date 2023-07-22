package registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
@WebServlet("/GenerateBill")

public class GenerateBill extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String unitComsume = request.getParameter("unitComsumed");
		String month = request.getParameter("month");
		String year = request.getParameter("year");
		String cno = request.getParameter("cno");
		String m;
		String y;
		int count = 0;

		int unitComsumed = Integer.parseInt(unitComsume);
		double totalBill = 0;

		if (unitComsumed > 0 && unitComsumed <= 100) {

			totalBill = 4.67 * unitComsumed;
		} else if (unitComsumed > 100 && unitComsumed <= 300) {
			totalBill = 6.58 * unitComsumed;
		} else if (unitComsumed > 300) {
			totalBill = 8.57 * unitComsumed;
		}
		RequestDispatcher dispatcher = null;
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/electricity1?useSSL=false", "root", "");
			PreparedStatement pst = con.prepareStatement("select * from bill where cno=?");
			pst.setString(1, cno);
			ResultSet rs = pst.executeQuery();

			if (rs != null) {
				while (rs.next()) {
					m = rs.getString("month");
					y = rs.getString("year");
					if (m.equals(month) && y.equals(year)) {
						request.setAttribute("status", "failed");
						dispatcher = request.getRequestDispatcher("CustomerDetails.jsp");
						count++;
						dispatcher.forward(request, response);
					}

				}
				if (count == 0) {
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection("jdbc:mysql://localhost:3306/electricity1?useSSL=false", "root",
							"");
					PreparedStatement pst1 = con.prepareStatement(
							"insert into bill(unitconsumed,month,year,totalbill,cno)values(?,?,?,?,?)");
					pst1.setInt(1, unitComsumed);
					pst1.setString(2, month);
					pst1.setString(3, year);
					pst1.setDouble(4, totalBill);
					pst1.setString(5, cno);
					int rowCount = pst1.executeUpdate();
					if (rowCount > 0) {
						request.setAttribute("status", "success");
						dispatcher = request.getRequestDispatcher("CustomerDetails.jsp");
						dispatcher.forward(request, response);
					}

				}

			}

			else {
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/electricity1?useSSL=false", "root", "");
				PreparedStatement pst1 = con
						.prepareStatement("insert into bill(unitconsumed,month,year,totalbill,cno)values(?,?,?,?,?)");
				pst1.setInt(1, unitComsumed);
				pst1.setString(2, month);
				pst1.setString(3, year);
				pst1.setDouble(4, totalBill);
				pst1.setString(5, cno);
				int rowCount = pst1.executeUpdate();
				if (rowCount > 0) {
					request.setAttribute("status", "success");
					dispatcher = request.getRequestDispatcher("CustomerDetails.jsp");
					dispatcher.forward(request, response);

				}

			}

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
