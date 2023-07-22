<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Deposite Bill | Electricity Billing System</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free HTML Templates" name="keywords">
<meta content="Free HTML Templates" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">
<link rel="stylesheet"
	href="path/to/font-awesome/css/font-awesome.min.css">


<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700;800&family=Rubik:wght@400;500;600;700&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="lib/animate/animate.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="css/style.css" rel="stylesheet">


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" />
<style>
.navbar-dark {
	background: linear-gradient(rgba(9, 30, 62, 0.311),
		rgba(9, 30, 62, 0.315)), url(img/banner3.png) center center no-repeat;
	/* background-size: cover; */
}

@media only screen and (max-width: 999px) {
	.carousel-inner {
		display: none;
	}
}
.card {
	width: 300px;
}

.cards {
	margin: 20px auto;
	display: grid;
	gap: 1rem;
}

@media ( min-width :600px) {
	.cards {
		grid-template-columns: repeat(2, 1fr);
	}
}
</style>
</head>

<body>
	<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">
	<form action="loginServlet" method="get">

		<div class="container-fluid position-relative p-0">
			<nav class="navbar navbar-expand-lg navbar-dark px-5 py-3 py-lg-0">
				<!-- <a href="index.html" class="navbar-brand p-0">
                <h1 class="m-0"><img src="img/MSEB-Online-Bill-Payment-Logo.png" alt=""></h1>
            </a> -->
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
					<span class="fa fa-bars"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<div class="navbar-nav ms-auto py-0">
						<a href="index.jsp" class="nav-item nav-link active">Home</a> <a
							href="about.jsp" class="nav-item nav-link">About</a>
						<div class="nav-item dropdown">
							<a href="PayBill.jsp" class="nav-link dropdown-toggle"
								data-bs-toggle="dropdown">Bills & payments</a>
							<div class="dropdown-menu m-0">
								<a href="PayBill.jsp" class="dropdown-item">Pay Bill</a> <a
									href="PaymentHistory.jsp" class="dropdown-item">Payment
									History</a>

							</div>
						</div>
						<div class="nav-item dropdown">
							<a href="NewConnection.html" class="nav-link dropdown-toggle"
								data-bs-toggle="dropdown">Services</a>
							<div class="dropdown-menu m-0">
								<a href="NewConnection.jsp" class="dropdown-item">New
									Connection Request</a> <a href="viewstatus.jsp"
									class="dropdown-item"> View Request Status</a>
							</div>
						</div>

						<a href="contact.jsp" class="nav-item nav-link">Contact Us</a>
					</div>
					<li><a href="logout" name="cnonum"
						class="btn btn-primary py-2 px-4 ms-3"><%=session.getAttribute("name")%></a>
					</li>
				</div>
			</nav>
				<div id="header-carousel" class="carousel slide carousel-fade"
			data-bs-ride="carousel">
			<div class="carousel-inner" style="height: 120px;">
				<div class="carousel-item active"></div>
			</div>
		</div>
	</div>


			
			<!-- ******************************************************************************* -->

			<section id="customer-details" style="margin-bottom: 20px;">
				<div class="container-fluid">



					<div class="row" style="margin-bottom: 20px">
						<div class="col-md-1 col-xs-1"></div>

						<div class="col-md-10 col-xs-10">

							<div class="cards">

								<div class="card">
									<input type="text" class="form-control"
										placeholder="Search Month" id="myInput2"
										onkeyup="myFunction2()">
								</div>

								<div class="card">
									<input type="text" class="form-control"
										placeholder="Search Year " id="myInput1"
										onkeyup="myFunction1()">

								</div>
							</div>
						</div>
						<div class="col-md-1 col-xs-1"></div>
					</div>




					<div class="row">

						<div class="col-md-1 col-xs-1"></div>


						<%
						Connection conn = null;
						Statement statement = null;
						Statement pst = null;
						Statement st = null;
						int i = 0;
						%>
						<div class="col-md-10 col-xs-10"
							style="overflow-x: auto; font-size: 14px;">
							<h1 style="color: rgba(22, 123, 162, 0.79); margin-top: 10px;"
								class="mb-5 text-center">Bill details</h1>
							<table class="table table-hover" id="billHistory">
								<thead>
									<tr>
										<th scope="col">Id</th>
										<th scope="col">Customer No</th>
										<th scope="col">Date</th>
										<th scope="col">UnitConsumed</th>
										<th scope="col">TotalBill</th>
										<th scope="col">Status</th>
										<th scope="col" colspan=2>Action</th>
									</tr>
								</thead>
								<%
								try {

									Class.forName("com.mysql.jdbc.Driver");
									conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/electricity1?useSSL=false", "root", "");
									pst = conn.createStatement();
									String username = (String) session.getAttribute("name");
									String sql = "select * from bill where cno=" + username;
									ResultSet rs = pst.executeQuery(sql);
									while (rs.next()) {
										if (rs.getString("status").equals("Paid")) {
								%>
								<tbody>
									<tr>
										<td><%=rs.getString("bill_id")%></td>
										<td><%=rs.getString("cno")%></td>
										<td><%=rs.getString("month")%>-<%=rs.getString("year")%></td>
										<td><%=rs.getString("unitConsumed")%></td>
										<td><%=rs.getString("totalBill")%></td>
										<td><%=rs.getString("status")%></td>
										<td><a href="bill?id=<%=rs.getString("bill_id")%>">
												<button type="button" class="btn btn-danger delete">Download
													Bill</button>
										</a></td>


									</tr>
								</tbody>
								<%
								}
								}

								conn.close();
								} catch (Exception e) {
								e.printStackTrace();
								}
								%>
							</table>
						</div>
	</form>
	</div>

	<div class="col-md-1 col-xs-1"></div>
	</div>
	</div>
	</section>


	<!-- Back to Top -->
	<a href="#"
		class="btn btn-lg btn-primary btn-lg-square rounded back-to-top"><i
		class="bi bi-arrow-up"></i></a>


	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="lib/wow/wow.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/waypoints/waypoints.min.js"></script>
	<script src="lib/counterup/counterup.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Template Javascript -->
	<script src="js/main.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>

	<script src="js/slider.js"></script>

	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if (status == "success") {
			swal("Payment", "Successfully", "success");
		}

		var status = document.getElementById("status").value;
		if (i == 0) {
			swal("Sorry", "Wrong id and password", "error");
		}

		function myFunction1() {

			var input, filter, table, tr, td, i, txtValue;
			input = document.getElementById("myInput1");
			filter = input.value.toUpperCase();
			table = document.getElementById("billHistory");
			tr = table.getElementsByTagName("tr");
			for (i = 0; i < tr.length; i++) {
				td = tr[i].getElementsByTagName("td")[2];
				if (td) {
					txtValue = td.textContent || td.innerText;
					if (txtValue.toUpperCase().indexOf(filter) > -1) {
						tr[i].style.display = "";
					} else {
						tr[i].style.display = "none";
					}
				}
			}
		}

		function myFunction2() {

			var input, filter, table, tr, td, i, txtValue;
			input = document.getElementById("myInput2");
			filter = input.value.toUpperCase();
			table = document.getElementById("billHistory");
			tr = table.getElementsByTagName("tr");
			for (i = 0; i < tr.length; i++) {
				td = tr[i].getElementsByTagName("td")[2];
				if (td) {
					txtValue = td.textContent || td.innerText;
					if (txtValue.toUpperCase().indexOf(filter) > -1) {
						tr[i].style.display = "";
					} else {
						tr[i].style.display = "none";
					}
				}
			}
		}
	</script>



</body>
</html>
