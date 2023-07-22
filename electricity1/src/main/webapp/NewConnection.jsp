<!doctype html>
<html lang="en">

<head>
    <title>New User | Electricity Billing System</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="css/signin.css">
    <style>
         html,
        body {
            height: 100%;
        } *

        body {
            background-image: url("img/bg.jpg");
            background-size: cover;
            height: 100%;
        }

        select option {
            margin: 40px;
            background: rgba(0, 0, 0, 0.831);
            color: white;
            text-shadow: 0 1px 0 rgba(0, 0, 0, 0.4);
        }

        input::-webkit-outer-spin-button,
        input::-webkit-inner-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }
        button:hover {
            opacity: 0.9;
        
        }
      
    </style>

</head>

<body class="img js-fullheight">

    
    <section class="ftco-section p-5">
        <div class="container">
            <div class="row justify-content-center">
            </div>
            <div class="row justify-content-center">
                <div class="col-md-6 col-lg-4">
                    <div class="login-wrap p-0">
                        <h3 class="mb-4 text-center">New Connection Request</h3>
                        <form action="NewConnectionRequest" class="signin-form" method="post">
                        <%String username =(String)session.getAttribute("name");
                        %> <span><label for="meter-number" style="color: white;" class="form-label">Customer
								Number</label>
							<input type="text"  class="form-control"
								value="<%=session.getAttribute("name")%>"
								name="cno" readonly="readonly">
						</div>

                            <div class="form-group">
                                <label for="gender" style="color: white;">Customer Name</label>
                                <input type="text" class="form-control" placeholder="Name" required name="cname">
                            </div>

                            <div class="form-group">
                                <label for="mobile" style="color: white;">Mobile Number</label>
                                <input type="number" class="form-control" placeholder="Number" required name="cmobile">
                            </div>

                            <div class="form-group">
                                <label for="email" style="color: white;">Email</label>
                                <input type="email" class="form-control" placeholder="Email" required name="cemail">
                            </div>

                            <div class="form-group">
                                <label for="Address" style="color: white;">Customer Address</label>
                                <input type="text" class="form-control" placeholder="Enter Address" 
                                required name="caddress">
                            </div>

                          <div class="form-group d-md-flex">
								
								<div class="w-50">
									<div class="have_account">
										
										<a class="login_href btn btn-danger"  href="index.jsp" style="color:white"
											>Cancle</a>
									</div>
								</div>
							
								<div class="w-50 text-md-right">
									<button class="btn btn-primary" href="#" style="color: #fff"  type="submit">Submit</button>
								</div>
								
                            </div> 
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <script src="../js/jquery.min.js"></script>
    <script src="../js/popper.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/main.js"></script>

</body>

</html>