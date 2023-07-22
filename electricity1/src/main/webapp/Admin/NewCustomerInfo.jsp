<!doctype html>
<html lang="en">

<head>
    <title>New User | Electricity Billing System</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="../css/signin.css">
    <style>
      
        body {
            background-image: url("../img/bg.jpg");
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
                        <h3 class="mb-4 text-center">Fill Other Information</h3>
                        <form action="#" class="signin-form">

                            <div class="form-group">
                                <label for="number" style="color: white;">Customer Number</label>
                                <input type="number" class="form-control" placeholder="Customer Number" required>
                            </div>

                            <div class="form-group text-left">
                                <label for="location" style="color: white;">Location</label>
                                <select id="Location" class="form-control" name="Location">
                                    <option value="inside">Inside</option>
                                    <option value="outside">Outside</option>
                                </select>
                            </div>
                            
                            <div class="form-group">
                                <label for="days" style="color: white;">Days</label>
                                <input type="number" class="form-control" value="30" required>
                                <h6 class="mt-3 text-center" style="color: white;">Bill comes of 30 Days By Default</h6>
                            </div>

                            <div class="form-group">
                                <label for="Phase-code" style="color: white;">Phase Code</label>
                                <input type="number" class="form-control" placeholder="Enter Phase Code" required>
                            </div>

                          <div class="form-group d-md-flex">
								<div class="w-50">
									<div class="have_account">
										<a href="NewCustomerInfo.html"><button class="login_href btn btn-primary p-2"
											>Create</button></p>
										</div></a>
								</div>
							
								<div class="w-50 text-md-right">
									<button class="btn btn-danger p-2" href="#" style="color: #fff">Cancle</button>
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