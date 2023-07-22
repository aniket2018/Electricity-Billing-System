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
<title>Electricity Billing System</title>
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

<!-- Template Stylesheet -->
<link href="css/style.css" rel="stylesheet">
<link rel="stylesheet" href="css/slider.css">
<link rel="stylesheet" href="alert/dist/sweetalert.css">


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

.delete {
	font-size: 12px;
	border-radius: 5px;
}

.delete:hover {
	background-color: rgb(116, 10, 10);
}
</style>
</head>

<body>




	<!-- Navbar & Carousel Start -->
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
					<a href="" class="nav-item nav-link active">Home</a> <a
						href="adminPages/NewCustomer.html" class="nav-item nav-link">New
						Customer</a> <a href="adminPages/CustomerDetails.html"
						class="nav-item nav-link">Customer Details</a> <a
						href="adminPages/DepositeDetails.html" class="nav-item nav-link">Deposite
						Details</a> <a href="adminPages/CalculateBill.html"
						class="nav-item nav-link">Calculate Bill</a>

				</div>
				<a href="#" class="btn btn-primary py-1 px-4 ms-3"
					style="border-radius: 8px;">Log Out</a>
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

	<section id="customer-details mt-5">
		<div class="container-fluid">
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
					<h1 style="color: rgba(22, 123, 162, 0.79);" class="mb-2">New Connection Request
						</h1>
					<table class="table table-hover">
						<thead>
							<tr><th scope="col">Customer No</th>
								<th scope="col">Customer Name</th>
								<th scope="col">Email</th>
								<th scope="col">Address</th>
								<th scope="col">Mobile No.</th>
								<th scope="col">Status</th>
								<th scope="col" colspan="2">Action</th>
							</tr>
						</thead>
						<%
						try {

							Class.forName("com.mysql.jdbc.Driver");
							conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/electricity1?useSSL=false", "root", "");
							pst = conn.createStatement();
							String str = "select * from newconnection ";
							ResultSet rs = pst.executeQuery(str);
							while (rs.next()) {
						%>
						<tbody>
							<tr>
								<td><%=rs.getString("cname")%></td>
								<td><%=rs.getString("cemail")%></td>
								<td><%=rs.getString("caddress")%></td>
								<td><%=rs.getString("cmobile")%></td>
								<td><%=rs.getString("request")%></td>
													
							</tr>
						</tbody>
						<%
						}

						conn.close();
						} catch (Exception e) {
						e.printStackTrace();
						}
						%>
					</table>
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

	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if (i == 0) {
			swal("Sorry", "Wrong id and password", "error");
		}
	</script>

</body>

</html>