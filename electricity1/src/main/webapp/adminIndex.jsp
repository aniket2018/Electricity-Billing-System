
<%
if(session.getAttribute("Name")==null){
	response.sendRedirect("adminLogin.jsp");
}
%>
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

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" />
</head>

<body>
<input type ="hidden" id="status" value="<%= request.getAttribute("status")%>">


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
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="w-100" src="img/banner2.png" alt="Image">
					<div
						class="carousel-caption d-flex flex-column align-items-center justify-content-center">
						<div class="p-3" style="max-width: 900px;">
							<h1 class="display-1 text-white mb-md-4 animated zoomIn">Pay
								Your Bill Online</h1>
							<h5 class="text-white text-uppercase mb-3 animated slideInDown">
								Pay online<br> Save Your Time
							</h5>
							
							<!-- <a href="" class="btn btn-outline-light mt-3 py-md-2 px-md-3 animated slideInRight">Contact
                                Us</a> -->
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img class="w-100" src="img/banner4.png" alt="Image">
					<div
						class="carousel-caption d-flex flex-column align-items-center justify-content-center">
						<div class="p-3" style="max-width: 900px;">
							<h1 class="display-1 text-white mb-md-4 animated zoomIn">Pay
								Your Bill Online</h1>
							<h5 class="text-white text-uppercase mb-3 animated slideInDown">
								Pay Online<br> Save Your Time.
							</h5>

							<a href="service.html"
								class="btn btn-primary py-md-2 px-md-2 me-3 animated slideInLeft">Our
								Services</a>
							<!-- <a href="contact.html"
                                class="btn btn-outline-light py-md-2 px-md-3 animated slideInRight">Contact
                                Us</a> -->
						</div>
					</div>
				</div>

				<div class="carousel-item">
					<img class="w-100" src="img/banner3.png" alt="Image">
					<div
						class="carousel-caption d-flex flex-column align-items-center justify-content-center">
						<div class="p-3" style="max-width: 900px;">
							<h1 class="display-1 text-white mb-md-4 animated zoomIn">Pay
								Your Bill Online</h1>
							<h5 class="text-white text-uppercase mb-3 animated slideInDown">
								Pay Online<br> Save Your Time
							</h5>

							<a href="service.html"
								class="btn btn-primary py-md-2 px-md-3 me-3 animated slideInLeft">Our
								Services</a>
							<!-- <a href="contact.html"
                                class="btn btn-outline-light py-md-2 px-md-3 animated slideInRight">Contact
                                Us</a> -->
						</div>
					</div>
				</div>

			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#header-carousel" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#header-carousel" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</div>



	<div class="blog-area fix bg-color area-padding-2 mt-2"
		style="background-color: rgb(255, 255, 255)">
		<br>
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="">
						<div class="blog-content">

							<h4 style="color: rgb(38, 138, 174);">WHO WE ARE</h4>
							<p style="color: #ac5d1c;">
								Orient Consultancy is a leading provider of Internet solutions
								with services such as e-Commerce solutions, Web development, web
								applications, Multimedia and Design Solutions, Software
								development and Wireless technologies / mobile game development.

								<br> <br> At Orient Consultancy, we know that it's
								more than the products we design and implement. Orient is backed
								by a team of committed, experienced and qualified professionals.
								The team is the firm's biggest asset. <a href="about.html">Read
									More</a>
							</p>
						</div>
					</div>
				</div>

				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="">
						<div class="blog-image">
							<div class="image-scale">
								<img src="img/images/about3.gif" alt="">
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- /* *************************************************************** */ -->

	<div class="blog-area fix bg-color"
		style="background-image: url(img/images/common-start-prj-bg.jpg); padding: 20px 0px 20px;">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="single-well mar-well">
						<br>
						<h4 style="color: white">What We Do?</h4>

						<p style="color: white">msebonlinebillpayment.com provides
							comprehensive step-by-step tutorials, general tips, and answers
							to commonly asked questions related to the subject the website
							cover. I hope what I present in front of you will help you to
							make your life easier at least a tiny bit.</p>
						<a class="contact-button" style="background-color: black"
							href="contact.html">Contact us</a>

					</div>
				</div>
				<!-- End single page -->
			</div>
			<!-- End row -->
		</div>
	</div>

	<!-- 888888888888888888888888888888888888888888888888888888888888888888888888888 -->

	<section id="rewards">
		<div class="container-fluid" style="margin-top: 50px;">
			<div class="row">
				<h2>Rewards & Savings</h2>
				<div class="col-md-6 col-xs-12">
					<div class="owl-item active">
						<div class="card">
							<a href="#">
								<div class="card-image spl-image mt-3">
									<img src="img/electric-smile.jpg" alt="VSD"
										style="border-radius: 10px;">
								</div>
								<div class="card-content mt-3">
									<h3>Electric Smiles</h3>
									<p>Get 2% loyalty points on every bill payment at Adani
										electricity online platforms</p>
									<span class="link-btn">Know More </span>
								</div>
							</a>
						</div>
					</div>
				</div>

				<div class="col-md-6 col-xs-12">
					<div class="owl-item active">
						<div class="card">
							<a href="#">
								<div class="card-image spl-image mt-3">
									<img src="img/VDS.png" alt="VSD" style="border-radius: 10px;">
								</div>
								<div class="card-content mt-3">
									<h3>Electric Smiles</h3>
									<p>Get 2% loyalty points on every bill payment at Adani
										electricity online platforms</p>
									<span class="link-btn">Know More </span>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- ******************************************************************************* -->
	<section id="mony-saving">
		<div class="container-fluid mt-5" style="margin-top: 70px;">
			<div class="row">
				<h2>Money Savings Tips</h2>

				<div class="col-md-3">
					<div class="owl-item active">
						<div class="card">
							<a href="#">
								<div class="card-image spl-image mt-3">
									<img src="img/Energy Wizard.jpg" alt="VSD"
										style="border-radius: 10px;">
								</div>
								<div class="card-content mt-3">
									<h4>Energy Wizard</h4>
									<p>Learn how to optimize energy useage for maximum
										benefits.</p>
									<span class="link-btn">Know More </span>
								</div>
							</a>
						</div>
					</div>
				</div>


				<div class="col-md-3">
					<div class="owl-item active">
						<div class="card">
							<a href="#">
								<div class="card-image spl-image mt-3">
									<img src="img/Simple Ways to Save.jpg" alt="VSD"
										style="border-radius: 10px;">
								</div>
								<div class="card-content mt-3">
									<h4>Simple ways to save</h4>
									<p>Simplest tips and trics to bring down your energy
										consuption and bill.</p>
									<span class="link-btn">Know More </span>
								</div>
							</a>
						</div>
					</div>
				</div>


				<div class="col-md-3">
					<div class="owl-item active">
						<div class="card">
							<a href="#">
								<div class="card-image spl-image mt-3">
									<img src="img/Energy Calculator.jpg" alt="VSD"
										style="border-radius: 10px;">
								</div>
								<div class="card-content mt-3">
									<h4>Energy Calculator</h4>
									<p>Give us little information and we shall calculate your
										energy requriment.</p>
									<span class="link-btn">Know More </span>
								</div>
							</a>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<div class="owl-item active">
						<div class="card">
							<a href="#">
								<div class="card-image spl-image mt-3">
									<img src="img/What Products to Buy.jpg" alt="VSD"
										style="border-radius: 10px;">
								</div>
								<div class="card-content mt-3">
									<h4>What Product to Buy</h4>
									<p>Check how to choose energy efficient Electrical
										appliances</p>
									<span class="link-btn">Know More </span>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="banner-video" style="margin-top: 50px;">
			<video loop="true" autoplay="autoplay" muted="">
				<source src="img/windmill-animation.mp4" type="video/mp4">
			</video>
		</div>
	</section>

	<!-- ******************************************************************************* -->






	<!-- ******************************************************************************* -->

	<!-- Footer Start -->
	<div class="container-fluid bg-dark text-light mt-5 wow fadeInUp p-0"
		data-wow-delay="0.1s" id="footer">
		<div class="container">
			<div class="row gx-5" id="footer-containers">

				<div class="col-md-5 col-sm-4 col-xs-12 footer-about">
					<div class="d-flex flex-column  h-100  p-4">
						<a href="index.html" class="navbar-brand">
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
                    <div class="section-title section-title-sm position-relative pb-3 mb-4">
                        <h3 class="text-light mb-0">Address</h3>
                    </div>
                    <div class="d-flex mb-2">
                        <i class="bi bi-geo-alt text-primary me-2"></i>
                        <p class="mb-0"> MVGX+PRX, Pradakshina Rd, Alandi, Maharashtra 412105</p>
                    </div>
                   
                    <div class="d-flex mb-2">
                        <i class="bi bi-envelope-open text-primary me-2"></i>
                        <p class="mb-0">aniketproject2018@gmail.com</p>
                    </div>
                    <div class="d-flex mb-2">
                        <i class="bi bi-telephone text-primary me-2"></i>
                        <p class="mb-0">7066447970</p>
                    </div>
                    <div class="d-flex mt-4">
                        <a class="btn btn-primary btn-square me-2" href="#"><i class="fab fa-twitter fw-normal"></i></a>
                        <a class="btn btn-primary btn-square me-2" href="#"><i
                                class="fab fa-facebook-f fw-normal"></i></a>
                        <a class="btn btn-primary btn-square me-2" href="#"><i
                                class="fab fa-linkedin-in fw-normal"></i></a>
                        <a class="btn btn-primary btn-square" href="#"><i class="fab fa-instagram fw-normal"></i></a>
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
                        <p class="mb-0">&copy; <a class="text-white border-bottom" href="#">Copyright © 2023 <a
                                    href="index.html"> Online Electricity Billing System College Project </a>
                                All Rights Reserved
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

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
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>

	<script src="js/slider.js"></script>

</body>

</html>