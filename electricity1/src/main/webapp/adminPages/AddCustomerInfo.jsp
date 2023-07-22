<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Add Customer | Electricity Billing System</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">


    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700;800&family=Rubik:wght@400;500;600;700&display=swap"
        rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="../lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="../lib/animate/animate.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <link href="../css/style.css" rel="stylesheet">


    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" />
    <style>
        .navbar-dark {
            background: linear-gradient(rgba(9, 30, 62, 0.311), rgba(9, 30, 62, 0.315)), url(../img/banner3.png) center center no-repeat;
            /* background-size: cover; */
        }

        @media only screen and (max-width: 999px) {
            .carousel-inner {
                display: none;
            }
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
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="fa fa-bars"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto py-0">
                    <a href="ADMIN.JSP" class="nav-item nav-link active">Home</a>
                    <a href="NewCustomer.jsp" class="nav-item nav-link">New Customer</a>
                    <a href="CustomerDetails.jsp" class="nav-item nav-link">Customer Details</a>
                    <a href="DepositeDetails.jsp" class="nav-item nav-link">Deposite Details</a>
                    <a href="CalculateBill.jsp" class="nav-item nav-link">Calculate Bill</a>

                </div>
                <a href="#" class="btn btn-primary py-1 px-4 ms-3" style="border-radius: 8px;">Log Out</a>
            </div>
        </nav>

        <div id="header-carousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
            <div class="carousel-inner" style="background-color: aqua;height: 98px;">
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
                    <h3 class="mb-4 text-center" style="color: rgba(22, 123, 162, 0.79);">Fill Other Information</h3>
                    <form action="#" class="signin-form">

                    <!--  -   <div class="mb-3">
                            <label for="" class="form-label">Customer Number</label>
                            <input type="number" class="form-control" id="" aria-describedby="emailHelp"
                                placeholder="Enter Customer Number" name="CustomerNo" required>
                        </div> -->

                       <div class="mb-3">
                        <label for="" class="form-label">Location</label>
                        <select id="Location" class="form-control" name="Location" fdprocessedid="sv8nme">
                            <option value="inside">-- Select --</option>
                            <option value="inside">Inside</option>
                            <option value="outside">Outside</option>
                        </select>
                       </div>

                       <div class="mb-3">
                        <label for="" class="form-label">Days</label>
                        <input type="number" class="form-control" id="" aria-describedby="emailHelp"
                        placeholder="Days" name="CustomerNo" required value="30">
                       </div>

                        <div class="mb-3">
                            <label for="" class="form-label">Phase Code</label>
                            <textarea class="form-control" placeholder="Enter your address" id="floatingTextarea"
                                name="Enter Pase Code"></textarea>
                        </div>

                        <div class="form-group" style="display:flex;justify-content: space-between;">
                            <a href="#" class="btn btn-primary w-50 mt-2" style="margin-right: 10px;">Cancle</a>
                            <a href="#" class="btn btn-primary w-50 mt-2" style="margin-left: 10px;">Add Customer</a>       
                        </div>
                    </form>

                </div>

                <div class="col-md-3 col-xs-3"></div>
            </div>
        </div>
    </section>


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../lib/wow/wow.min.js"></script>
    <script src="../lib/easing/easing.min.js"></script>
    <script src="../lib/waypoints/waypoints.min.js"></script>
    <script src="../lib/counterup/counterup.min.js"></script>
    <script src="../lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="../js/main.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>

    <script src="../js/slider.js"></script>

</body>

</html>