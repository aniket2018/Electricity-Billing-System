<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%><!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Contat Us | Electricity Billing System</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free HTML Templates" name="keywords">
<meta content="Free HTML Templates" name="description">

	<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

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
</head>

<body>
	<!-- Spinner Start -->
	<div id="spinner"
		class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner"></div>
	</div>
	<!-- Spinner End -->


	<!-- Topbar Start -->
	<div class="container-fluid bg-dark px-5 d-none d-lg-block">
		<div class="row gx-0">
			<div class="col-lg-8 text-center text-lg-start mb-2 mb-lg-0">
				<div class="d-inline-flex align-items-center" style="height: 45px;">
					<small class="me-3 text-light"><i
						class="fa fa-phone-alt me-2"></i>7066447970</small> <small
						class="text-light"><i class="fa fa-envelope-open me-2"></i>
						aniketproject2018@gmail.com</small>
				</div>
			</div>
			<div class="col-lg-4 text-center text-lg-end">
				<div class="d-inline-flex align-items-center" style="height: 45px;">
					<a
						class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2"
						href=""><i class="fab fa-twitter fw-normal"></i></a> <a
						class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2"
						href=""><i class="fab fa-facebook-f fw-normal"></i></a> <a
						class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2"
						href=""><i class="fab fa-linkedin-in fw-normal"></i></a> <a
						class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2"
						href=""><i class="fab fa-instagram fw-normal"></i></a> <a
						class="btn btn-sm btn-outline-light btn-sm-square rounded-circle"
						href=""><i class="fab fa-youtube fw-normal"></i></a>
				</div>
			</div>
		</div>
	</div>
	<!-- Topbar End -->


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
					<a href="index.jsp" class="nav-item nav-link active">Home</a> <a
						href="about.jsp" class="nav-item nav-link">About</a>
					<div class="nav-item dropdown">
						<a href="PayBill.html" class="nav-link dropdown-toggle"
							data-bs-toggle="dropdown">Bills & payments</a>
						<div class="dropdown-menu m-0">
							<a href="PayBill.jsp" class="dropdown-item">Pay Bill</a> 
							<a href="PaymentHistory.jsp" class="dropdown-item">Payment
								History</a>

						</div>
					</div>
					<div class="nav-item dropdown">
						<a href="NewConnection.html" class="nav-link dropdown-toggle"
							data-bs-toggle="dropdown">Services</a>
						<div class="dropdown-menu m-0">
							<a href="NewConnection.jsp" class="dropdown-item">New
								Connection Request</a>
						</div>
					</div>

					<a href="contact.jsp" class="nav-item nav-link">Contact Us</a>
				</div>
				<!-- <a href="NEWUSER.html" class="btn btn-primary py-2 px-4 ms-3">Log in</a>
                <a href="SIGNIN.html" class="btn btn-primary py-2 px-4 ms-3">Sign up</a> -->
			</div>
		</nav>

		<div class="container-fluid bg-primary py-5 bg-header"
			style="margin-bottom: 90px;">
			<div class="row py-5">
				<div class="col-12 pt-lg-5 mt-lg-5 text-center">
					<h1 class="display-4 text-white animated zoomIn">Contact Us</h1>
					<a href="index.jsp" class="h5 text-white">Home</a> <i
						class="far fa-circle text-white px-2"></i> <a href="contact.html"
						class="h5 text-white">Contact</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Navbar End -->


	<!-- Full Screen Search Start -->
	<div class="modal fade" id="searchModal" tabindex="-1">
		<div class="modal-dialog modal-fullscreen">
			<div class="modal-content" style="background: rgba(9, 30, 62, .7);">
				<div class="modal-header border-0">
					<button type="button" class="btn bg-white btn-close"
						data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div
					class="modal-body d-flex align-items-center justify-content-center">
					<div class="input-group" style="max-width: 600px;">
						<input type="text"
							class="form-control bg-transparent border-primary p-3"
							placeholder="Type search keyword">
						<button class="btn btn-primary px-4">
							<i class="bi bi-search"></i>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Full Screen Search End -->


	<!-- Contact Start -->
	<div class="container-fluid py-4 wow fadeInUp" data-wow-delay="0.1s">
		<div class="container">
			<div
				class="section-title text-center position-relative pb-3 mb-5 mx-auto"
				style="max-width: 600px;">
				<h5 class="fw-bold text-primary text-uppercase">Contact Us</h5>
				<h1 class="mb-0">If You Have Any Query, Feel Free To Contact Us</h1>
			</div>

			<div class="row">
				<div class="col-md-4 col-sm-4 col-xs-12">
					<div class="contactUs-icon text-center">
						<div class="icons">
							<i class="fa fa-mobile" aria-hidden="true"></i>
							<p>
								Call : 7066447970<br>
								<span>Monday-Saturday</span><br>
								<br>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-12">
					<div class="contactUs-icon text-center">
						<div class="icons">
							<i class="fa fa-envelope-o" aria-hidden="true"></i>
							<p>
								<a href="">aniketproject2018@gmail.com</a><br>
								<br>
							</p>
						</div>
					</div>
				</div>

				<div class="col-md-4 col-sm-4 col-xs-12">
					<div class="contactUs-icon text-center">
						<div class="icons">
							<i class="fa fa-map-marker" aria-hidden="true"></i>
							<p>MVGX+PRX, Pradakshina Rd, Alandi, Maharashtra 412105</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="row mx-4">
			<div class="col-lg-6 wow slideInUp" data-wow-delay="0.3s">
				<form>
					<div class="row g-3">
						<div class="col-md-6">
							<input type="text" class="form-control border-0 bg-light px-4"
								placeholder="Your Name" style="height: 55px;" required>
						</div>
						<div class="col-md-6">
							<input type="email" class="form-control border-0 bg-light px-4"
								placeholder="Your Email" style="height: 55px;" required>
						</div>
						<div class="col-12">
							<input type="text" class="form-control border-0 bg-light px-4"
								placeholder="Subject" style="height: 55px;" required>
						</div>
						<div class="col-12">
							<textarea class="form-control border-0 bg-light px-4 py-3"
								rows="4" placeholder="Message" required></textarea>
						</div>
						<div class="col-12">
							<button class="btn btn-primary w-100 py-3" type="submit">Send
								Message</button>
						</div>
					</div>
				</form>
			</div>
			<div class="col-lg-6 wow slideInUp" data-wow-delay="0.6s">
				<iframe class="position-relative rounded w-100 h-100"
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1890.1782362709441!2d73.78256801515813!3d18.647992996402476!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2b9cfa2941a2f%3A0x5b891fc389cee344!2sCareerTech%20IT%20Solutions!5e0!3m2!1sen!2sin!4v1680148548621!5m2!1sen!2sin"
					frameborder="0" style="min-height: 350px; border: 0;"
					allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
			</div>
		</div>

	</div>
	</div>







	<!-- Footer Start -->
	<!-- Footer Start -->
	<div class="container-fluid bg-dark text-light mt-5 wow fadeInUp p-0"
		data-wow-delay="0.1s" id="footer">
		<div class="container">
			<div class="row gx-5" id="footer-containers">

				<div class="col-md-5 col-sm-4 col-xs-12 footer-about">
					<div class="d-flex flex-column  h-100  p-4">
						<a href="INDEX.html" class="navbar-brand">
							<h1 class="m-0 text-white">
								<img src="../img/images/orientlogo.png" alt="">
							</h1>
						</a>
						<p class="mt-3 mb-4">Are you looking for professional advice
							for your new business. Are you looking for professional advice
							for your new business. Are you looking for professional advice
							for your new business.</p>
					</div>
				</div>


				<div class="col-md-4 col-sm-4 col-xs-12 pt-5 mb-5">
					<div
						class="section-title section-title-sm position-relative pb-3 mb-4">
						<h3 class="text-light mb-0">Address</h3>
					</div>
					<div class="d-flex mb-2">
						<i class="bi bi-geo-alt text-primary me-2"></i>
						<p class="mb-0">MVGX+PRX, Pradakshina Rd, Alandi, Maharashtra 412105</p>
					</div>
					
					<div class="d-flex mb-2">
						<i class="bi bi-envelope-open text-primary me-2"></i>
						<p class="mb-0">aniketproject2018@gmail.com</p>
					</div>
					<div class="d-flex mb-2">
						<i class="bi bi-telephone text-primary me-2"></i>
						<p class="mb-0">7066447970</p>
					</div>
					
				</div>


				<div class="col-md-3 col-sm-4 col-xs-12 pt-0 pt-lg-5 mb-5">
					<div
						class="section-title section-title-sm position-relative pb-3 mb-4">
						<h3 class="text-light mb-0">Service Links</h3>
					</div>
					<div class="link-animated d-flex flex-column justify-content-start">
						<a class="text-light mb-2" href="index.jsp"><i
							class="bi bi-arrow-right text-primary me-2"></i>Home</a> <a
							class="text-light mb-2" href="about.jsp"><i
							class="bi bi-arrow-right text-primary me-2"></i>About Us</a> <a
							class="text-light mb-2" href="NewConnection.jsp"><i
							class="bi bi-arrow-right text-primary me-2"></i>Service Offering
						</a> <a class="text-light mb-2" href=""><a
							class="text-light" href="contact.jsp"><i
							class="bi bi-arrow-right text-primary me-2"></i>Contact</a>
					</div>
				</div>

			</div>
		</div>
	</div>

	<div class="container-fluid text-white" style="background: #061429;">
		<div class="container ">
			<div class="row justify-content-start">
				<div class="col-lg-8 col-md-6">
					<div class="d-flex mt-4" style="height: 60px;">
						<p class="mb-0">
							&copy; <a class="text-white border-bottom" href="#">Copyright
								© 2021 <a href=""> Orient Consultancy </a> All Rights Reserved
							
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer End -->
	<!-- Footer End -->


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
</body>

</html>