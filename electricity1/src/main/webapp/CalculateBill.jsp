<%@page import="java.io.IOException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.*"%>




<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Calculate Bill | Electricity Billing System</title>
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

input::-webkit-outer-spin-button, input::-webkit-inner-spin-button {
	-webkit-appearance: none;
	margin: 0;
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
					<a href="adminIndex.jsp" class="nav-item nav-link active">Home</a> 
					<!-- 
					<a href="adminPages/AddCustomer.jsp" class="nav-item nav-link">New
						Customer</a> -->
						<a href="CustomerDetails.jsp"
						class="nav-item nav-link">Customer Details</a> <a
						href="DepositeDetails.jsp" class="nav-item nav-link">Deposite
						Details</a> <a href="ConnectionRequest.jsp"
						class="nav-item nav-link">New Request</a>

				</div>
				<li><a href="logout" class="btn btn-primary py-2 px-4 ms-3"><%=session.getAttribute("Name") %></a>
				</li>
			</div>
		</nav>

		<div id="header-carousel" class="carousel slide carousel-fade"
			data-bs-ride="carousel">
			<div class="carousel-inner"
				style="background-color: aqua; height: 98px;">
				<div class="carousel-item active"></div>
			</div>
		</div>
	</div>
	<!-- ******************************************************************************* -->



	<section id="customer-details" style="margin-bottom: 90px;">
		<div class="container-fluid">
			<div class="row">

				<div class="col-md-3 col-xs-3"></div>

				<div class="col-md-6 col-xs-6 mt-5">

					<h3 class="mb-4 text-center"
						style="color: rgba(22, 123, 162, 0.79);">Calculate Bill</h3>

					<form action="GenerateBill" method="post">

						<%
						HashMap<String, String> map = (HashMap<String, String>) request.getAttribute("map");
						%>

						<div class="form-group mb-3">
							<label for="meter-number" class="form-label">Customer
								Number</label> 
							<input type="text" class="form-control"
								value="<%=map.get("cno")%>"
								name="cno" readonly="readonly">
						</div>

						<div class="form-group mb-3">
							<label for="" class="form-label">Customer Name</label> <input
								type="text" class="form-control" name="uname"
								value="<%=map.get("uname")%>"  readonly="readonly">
						</div>

						<div class="form-group mb-3">
							<label for="" class="form-label">Mobile</label> <input
								type="number" class="form-control" name="mno"
								value="<%=map.get("mno")%>"  readonly="readonly">

						</div>

						<div class="form-group mb-3">
							<label for="city" class="form-label">City</label> <input
								type="text" class="form-control" name="city"
								value="<%=map.get("city")%>"  readonly="readonly">
						</div>

						<div class="form-group mb-3">
							<label for="meter-number" class="form-label">Unit
								Consumed</label> <input type="number" class="form-control"
								placeholder="Enter Meter Number." name="unitComsumed" required min="0">
						</div>

						<div class="form-group text-left mb-3">
							<label for="month" class="form-label">Month</label> <select
								id="Month" class="form-control" name="month">
								<option>-- Select Month --</option>
								<option value="January">January</option>
								<option value="February">February</option>
								<option value="March">March</option>
								<option value="April">April</option>
								<option value="May">May</option>
								<option value="June">June</option>
								<option value="July">July</option>
								<option value="August">August</option>
								<option value="September">September</option>
								<option value="October">October</option>
								<option value="November">November</option>
								<option value="December">December</option>
							</select>
							<label for="month" class="form-label">Year</label> <select
								id="Month" class="form-control" name="year">
								<option>-- Select Month --</option>
								<option value="2023">2023</option>
								<option value="2024">2024</option>
								<option value="2025">2025</option>
								<option value="2026">2026</option>
								<option value="2027">2027</option>
								<option value="2028">2028</option>
								<option value="2029">2029</option>
								<option value="2030">2030</option>
								
							</select>
						</div>

						<div class="form-group"
							style="display: flex; justify-content: space-between;">
							<button type="" class="btn btn-primary w-50 mt-2"
								style="margin-right: 10px;">
								Cancle</button>
								<button type="submit" class="btn btn-primary w-50 mt-2"
									style="margin-left: 10px;">Generate</button>
						</div>
					</form>

				</div>

				<div class="col-md-3 col-xs-3"></div>
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

</body>

</html>