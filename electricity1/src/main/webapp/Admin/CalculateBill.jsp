<!doctype html>
<html lang="en">

<head>
	<title>Calculate Bill | Electricity Billing System</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" href="../css/signin.css">
	<style>
		body {
			background-color: white;
			background-image: url("../img/bg.jpg");
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
	</style>

</head>

<body class="img js-fullheight">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">

			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
						<h3 class="mb-4 text-center">Calculate Bill</h3>
						<form action="#" class="signin-form">

							<div class="form-group">
								<label for="meter-number" style="color: white;">Meter Number</label>
								<input type="number" class="form-control" placeholder="Enter Meter Number." required>
							</div>

							<div class="form-group">
								<label for="name" style="color: white;">Name</label>
								<input type="text" class="form-control" placeholder="Enter Name." required>
							</div>

							<div class="form-group">
								<label for="address" style="color: white;">Address</label>
								<input type="text" class="form-control" placeholder="Enter Address." required>
							</div>

							<div class="form-group">
								<label for="meter-number" style="color: white;">Unit Consumed</label>
								<input type="number" class="form-control" placeholder="Enter Meter Number." required>
							</div>

							<div class="form-group text-left">
								<label for="Month" style="color: white;">Month</label>
								<select id="Month" class="form-control" name="Month">
									<!-- <option>-- Select --</option> -->
									<option value="Admin">Select Month</option>
									<option value="Admin">January</option>
									<option value="Customer">February</option>
									<option value="Admin">March</option>
									<option value="Customer">April</option>
									<option value="Admin">May</option>
									<option value="Customer">June</option>
									<option value="Admin">July</option>
									<option value="Customer">August</option>
									<option value="Admin">September</option>
									<option value="Customer">October</option>
									<option value="Admin">November</option>
									<option value="Customer">December</option>
								</select>
							</div>

							<div class="form-group d-md-flex">
								<div class="w-50">
									<div class="have_account">
										<a href="NewCustomerInfo.html"><button
												class="login_href btn btn-primary p-2">Submit</button></p>
									</div></a>
								</div>
								<div class="w-50 text-md-right">
									<a href="ADMIN.html"> <button class="btn btn-danger p-2" href="#"
											style="color: #fff">Cancle</button>
									</a>
								</div>
							</div>

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

</body>

</html>