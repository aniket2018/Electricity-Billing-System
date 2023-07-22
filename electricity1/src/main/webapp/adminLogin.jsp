
<!doctype html>
<html lang="en">

<head>
<title>AdminLogin Page</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="css/signin.css">
<style>
body {
	background-color: white;
	background-image: url("img/bg.jpg");
	background-size: auto 100%;
	background-repeat: no-repeat;
	background-position: left top;
}

select option {
	margin: 40px;
	background: rgba(0, 0, 0, 0.831);
	color: white;
	text-shadow: 0 1px 0 rgba(0, 0, 0, 0.4);
}
.user-area .user-avatar {
	float: right;
	width: 70px;
	height: 70px;
	margin-right: 20px;
}

.user-area p {

	margin: 10px;
	color: white;
}

.user-area p:hover {
	color: red;
}
</style>

</head>

<body class="img js-fullheight">
<div class="user-area float-right">
		<a href="login.jsp" class="active"> <img class="user-avatar"
			src="img/profile.png" alt="User Avatar">
			<p>Customer Login</p>
		</a>
	</div>
	<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center"></div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
						<h3 class="mb-4 text-center">Admin Login</h3>
						<form action="adminServlet" method="post">
							<div class="form-group">
								<label for="username" style="color: white;">Username</label> <input
									type="text" name="username" class="form-control"
									placeholder="Username" required>
							</div>

							<label for="password" style="color: white;">Password</label>
							<div class="form-group">
								<input id="password-field" type="password" name="password"
									class="form-control" placeholder="Password" required> <span
									toggle="#password-field"
									class="fa fa-fw fa-eye field-icon toggle-password"></span>
							</div>



							<div class="form-group mt-4">
								<button type="submit"
									class="form-control btn btn-primary submit px-3">
									<div class="signin">
										<a class="signin">Sign In 
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="js/jquery.min.js"></script>
	<script src="js/popper.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if (status == "failed") {
			swal("Sorry", "Wrong id and password", "error");
		}
	</script>
</body>
</html>