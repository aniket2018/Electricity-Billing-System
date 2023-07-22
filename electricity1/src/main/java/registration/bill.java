package registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javax.servlet.annotation.WebServlet;
/**
 * Servlet implementation class bill
 */
@WebServlet("/bill")
public class bill extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Connection con;
	Statement stat;
	PreparedStatement pst;
	ResultSet rs;
	int row;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String sId = request.getParameter("id");
		out.print(sId);
		

		//		Integer userId = Integer.parseInt(sId);
		Statement pst = null;
		HashMap<String,String> map=new HashMap<String,String>();


		try {

			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/electricity1?useSSL=false", "root", "");					
			pst = con.createStatement();
			String str = "SELECT * from bill natural join user where bill_id=" + sId;
			ResultSet rs = pst.executeQuery(str);

			while (rs.next()) {
				
				
				
				
				String bill_id = rs.getString("bill_id");
				String cno = rs.getString("cno");
				String unitConsumed = rs.getString("unitConsumed");
				String month = rs.getString("month");
				String year = rs.getString("year");
				String totalBill = rs.getString("totalBill");
				String status = rs.getString("status");
				String uname = rs.getString("uname");
				String uemail = rs.getString("uemail");		
				String uwpd = rs.getString("upwd");
				String mno = rs.getString("mno");
				String city = rs.getString("city");

				
				
				map.put("bill_id", bill_id);
				map.put("cno", cno);
				map.put("unitConsumed", unitConsumed);
				map.put("month", month);
				map.put("year", year);
				map.put("totalBill", totalBill);
				map.put("status", status);
				map.put("uname", uname);
				map.put("uemail", uemail);
				map.put("uwpd", uwpd);
				map.put("cno", cno);
				map.put("mno", mno);
				map.put("city", city);

			} 
			//			request.setAttribute("map", map);
			//			RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher("/CalculateBill.jsp");
			//			requestDispatcher.forward(request,response);

			request.setAttribute("map", map);
			request.getRequestDispatcher("bill.jsp").forward(request, response);
			request.getRequestDispatcher("getway.jsp").forward(request, response);
			con.close();



		}
		catch (Exception e) {
			e.printStackTrace();
		}




	}

}
