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
        /* html,
        body {
            height: 100%;
        } */

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
<input type ="hidden" id="status" value="<%= request.getAttribute("status")%>">

    
    <section class="ftco-section p-5">
        <div class="container">
            <div class="row justify-content-center">
            </div>
            <div class="row justify-content-center">
                <div class="col-md-6 col-lg-4">
                    <div class="login-wrap p-0">
                        <h3 class="mb-4 text-center">Sign in</h3>
                        
                        <form method ="post" action="registrationServlet" class="signin-form">
                        
                            <div class="form-group">
                                <label for="number" style="color: white;">Customer Number</label>
                                <input type="number" name="cno" id="uemail"class="form-control" placeholder="Enter Customer Number" required>
                            </div>

                            <div class="form-group">
                                <label for="gender" style="color: white;">Full Name</label>
                                <input type="text" name="name" id="name" class="form-control" placeholder="Enter Name" required>
                            </div>
                        

                            <div class="form-group">
                                <label for="gender" style="color: white;">Email</label>
                                <input type="email" name="email" id="email" class="form-control" placeholder="Enter Email" required>
                            </div>

                            <label for="password" style="color: white;">Password</label>
                            <div class="form-group">
                                <input id="password-field" type="password" name="pwd" class="form-control" placeholder="Enter Password"
                                    required>
                                <span toggle="#password-field"
                                    class="fa fa-fw fa-eye field-icon toggle-password"></span>
                            </div>

                            <div class="form-group">
                                <label for="mobile" style="color: white;">Mobile Number</label>
                                <input type="number" name="uno" id="uno" class="form-control" placeholder="Enter Mobile Number" required>
                            </div>
                            
                            <div class="form-group">
                                <label for="city" style="color: white;">City</label>
                                <input type="text" name="city" id="city" class="form-control" placeholder="Enter city" required>
                            </div>


                            <div class="form-group">
                                <button type="submit" class="form-control btn btn-primary submit px-3">Sign In</button>
                            </div>
<!-- 
                          <div class="form-group d-md-flex">
								<div class="w-50">
									<div class="have_account">
										<button class="login_href btn btn-primary p-2"
											>Sign in</button></p>
										</div>
								</div>
							
								<div class="w-50 text-md-right">
									<button class="btn btn-danger p-2" href="#" style="color: #fff">Cancle</button>
								</div>
                            </div>  -->



                            <div class="form-group d-md-flex justify-content-center">
                                <div class="" style="font-size: large;">
                                    <div class="have_account">
                                        Already have an account?
                                        <a class="login_href"
                                            href="login.jsp">Log</a>
                                        </p>
                                    </div>
                                </div>
                                <!-- <div class="w-50 text-md-right">
									<a href="#" style="color: #fff">Forgot Password</a>
								</div> -->
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
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
<script type="text/javascript">
var status =document.getElementById("status").value;
if(status=="success"){
	swal("Congrats","Account Create Successfully","success");
}

</script>
</body>

</html>