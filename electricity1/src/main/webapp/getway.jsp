<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.*"%>




<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<style>
.payment-summary .payment-summary-container .grand-total {
	display: flex;
	padding: 16px 18px;
	color: var(- -grey-dark-color)
}

.payment-summary .payment-summary-container .grand-total h3 {
	font-weight: 700;
	font-size: 14px;
	line-height: 19px;
	flex: 1 1
}

.payment-summary .payment-summary-container .grand-total h4 {
	margin-left: 8px
}

.benefits-list-container {
	padding: 16px
}

.upi-list-container {
	display: inline
}

.upi-list-container .upi-list-upper {
	background-color: var(- -off-white-color);
	border-radius: 8px;
	margin: 16px 16px 0;
	padding: 16px
}

.upi-list-container .upi-list-upper .upi-list {
	display: flex;
	flex-direction: row;
	overflow: auto;
	justify-content: space-between
}

@media only screen and (min-width: 1080px) {
	.upi-list-container .upi-list-upper .upi-list {
		justify-content: space-around
	}
}

.upi-list-container .upi-list-upper .upi-list .upi-item {
	display: flex;
	flex-direction: column;
	align-items: center;
	margin-right: 12px;
	cursor: pointer
}

.upi-list-container .upi-list-upper .upi-list .upi-item:hover .upi-img {
	border-color: var(- -primary-color)
}

.upi-list-container .upi-list-upper .upi-list .upi-item:hover .upi-text
	{
	color: var(- -primary-color)
}

@media only screen and (min-width: 1080px) {
	.upi-list-container .upi-list-upper .upi-list .upi-item {
		margin-right: 24px
	}
}

.upi-list-container .upi-list-upper .upi-list .upi-item .upi-img {
	display: flex;
	width: 44px;
	height: 44px;
	background: var(- -white-color);
	border: .5px solid var(- -light-gray-color);
	border-radius: 8px;
	padding: 6px;
	height: 44px;
}

.payment-summary .payment-summary-heading {
	font-weight: 700;
	font-size: 20px;
	line-height: 20px;
	margin: 32px 0 18px
}

@media only screen and (max-width: 1080px) {
	.payment-summary .payment-summary-heading {
		display: none
	}
}

.payment-summary .payment-summary-container {
	position: relative;
	display: flex;
	flex-direction: column;
	background-color: #eef4ff;
	border-radius: 8px;
	overflow: hidden;
	max-height: 0;
	transition: max-height .25s cubic-bezier(1, 0, 0, 1)
}

.payment-summary .payment-summary-container .heading-section {
	display: flex;
	flex-direction: row;
	padding: 16px 12px 0;
	flex-shrink: 0
}

.payment-summary .payment-summary-container .heading-section .left-section
	{
	font-weight: 700;
	font-size: 14px;
	line-height: 19px;
	flex: 1 1
}

.payment-summary .payment-summary-container .heading-section .right-section
	{
	display: flex;
	margin-left: 4px
}

.payment-summary .payment-summary-container .heading-section .right-section h3
	{
	font-size: 12px;
	font-weight: 400;
	line-height: 14px
}

.payment-summary .payment-summary-container .heading-section .right-section h3.strike
	{
	text-decoration: line-through
}

.payment-summary .payment-summary-container .heading-section .right-section h4
	{
	font-size: 14px;
	line-height: 16px;
	margin-left: 6px;
	flex-shrink: 0
}

.payment-summary .payment-summary-container .pack-details-container {
	position: relative;
	padding-bottom: 16px;
	margin-top: 4px
}

@media only screen and (max-width: 1080px) {
	.payment-summary .payment-summary-container .pack-details-container {
		padding-bottom: 22px
	}
}

.payment-summary .payment-summary-container .pack-details-container .pack-details-section
	{
	display: flex;
	align-items: flex-end;
	padding: 0 12px
}

.payment-summary .payment-summary-container .pack-details-container .pack-details-section .left-section
	{
	flex: 1 1
}

.payment-summary .payment-summary-container .pack-details-container .pack-details-section .left-section p
	{
	color: var(- -grey-dark-color);
	font-weight: 500;
	font-size: 12px;
	line-height: 28px
}

.payment-summary .payment-summary-container .pack-details-container .pack-details-section .left-section p.subheading
	{
	color: var(- -dark-color);
	line-height: 18px
}

.payment-summary .payment-summary-container .pack-details-container .pack-details-section .right-section
	{
	display: flex
}

.payment-summary .payment-summary-container .pack-details-container .pack-details-section .right-section p
	{
	font-size: 10px;
	color: var(- -grey-dark-color)
}

.payment-summary .payment-summary-container .pack-details-container .pack-details-section .right-section .details-btn:after
	{
	top: -3px
}

.payment-summary .payment-summary-container .pack-details-container .benefit-btn,
	.payment-summary .payment-summary-container .pack-details-container .details-btn
	{
	position: relative;
	color: var(- -primary-color);
	font-weight: 700;
	font-size: 12px;
	line-height: 20px;
	padding: 0 20px 0 0
}

.payment-summary .payment-summary-container .pack-details-container .benefit-btn:after,
	.payment-summary .payment-summary-container .pack-details-container .details-btn:after
	{
	content: "";
	position: absolute;
	top: 0;
	right: 0;
	height: 20px;
	width: 20px;
	background:
		url(https://assets.airtel.in/static-assets/new-payments/icons/arrow.svg)
		no-repeat 50%;
	background-size: contain;
	-webkit-transform-origin: center;
	transform-origin: center;
	-webkit-transform: rotate(0);
	transform: rotate(0);
	transition: -webkit-transform .2s ease-in-out;
	transition: transform .2s ease-in-out;
	transition: transform .2s ease-in-out, -webkit-transform .2s ease-in-out
}

.payment-summary .payment-summary-container .pack-details-container .benefit-btn.active:after,
	.payment-summary .payment-summary-container .pack-details-container .details-btn.active:after
	{
	-webkit-transform: rotate(-180deg);
	transform: rotate(-180deg)
}

.payment-summary .payment-summary-container .grand-total h4 {
	margin-left: 8px;
}

#rupee {
	width: 19px;
	height: 19px;
}
</style>
</head>
<body>
	<form action="card" method="get">

		<%
		HashMap<String, String> map = (HashMap<String, String>) request.getAttribute("map");
		PrintWriter out1 = response.getWriter();
		%>

		<section>
			<div class="container mt-5">
				<div class="row">
					<div class="col-md-7">
						<div class="payment-form">

							<div class="mb-3" w-30">
								<input type="name" class="form-control" name="name"
									id="exampleFormControlInput1" placeholder="Enter name">
							</div>

							<div class="mb-3">
								<!-- 
								<input type="text" class="form-control" name="date"
									id="exampleFormControlInput1" placeholder="Valid MM/YY"> -->
								<input type="date" id="start" name="date"
									 min="2023-06-1" max="2050-12-31">
							</div>

							<div class="mb-3">
								<input type="number" class="form-control" name="cvv"
									id="exampleFormControlInput1" placeholder="Enter CVV">
							</div>
							<div class="mb-3">
								<input type="hidden" class="form-control"
									value="<%=map.get("bill_id")%>" name="id" readonly="readonly">
							</div>
							<div>
								<TR>
									<TH></TH>
									<TD width="50%"><INPUT TYPE="submit" VALUE="submit"></a></TD>
								</tr>

							</div>
	</form>
	</div>



	<div class="upi-payment mt-5">

		<div class="accordion-container active"
			data-testid="accordionContainer-2" id="accordion-container-2">
			<div id="accordion-header-2" class="accordion-header"
				data-testid="accordionHeader-2">
				<img
					src="https://assets.airtel.in/static-assets/new-payments/icons/upi.svg"
					alt="type" loading="lazy" class=" " height="24" width="24">
				<h3>UPI</h3>
			</div>
			<a href="airtel?id=<%=map.get("bill_id")%>">
				<div class="accordion-content">
					<div class="upi-list-container" data-testid="upiListContainer">
						<div class="upi-list-upper">
							<ul class="upi-list" data-testid="upiList">
								<li class="upi-item" data-testid="upiHandlerSelectItem_airtel"><div
										class="upi-img ">
										<img
											src="https://assets.airtel.in/static-assets/wallet-icons/apb.svg"
											alt="airtel" loading="lazy" class=" "
											data-testid="selectedUpiHandlerImage_airtel">
									</div>
									<p class="upi-text text-center "
										data-testid="selectedUpiHandlerText_airtel">Airtel</p></li>
			</a> <a href="googlePay?id=<%=map.get("bill_id")%>">
				<li class="upi-item" data-testid="upiHandlerSelectItem_gPay"><div
						class="upi-img ">
						<img
							src="https://assets.airtel.in/static-assets/wallet-icons/gpay.svg"
							alt="gPay" loading="lazy" class=" "
							data-testid="selectedUpiHandlerImage_gPay">
					</div>
					<p class="upi-text " data-testid="selectedUpiHandlerText_gPay">Google
						Pay</p></li>
			</a> <a href="payTm?id=<%=map.get("bill_id")%>">
				<li class="upi-item  " data-testid="upiHandlerSelectItem_paytm"><div
						class="upi-img">
						<img
							src="https://assets.airtel.in/static-assets/wallet-icons/paytm.svg"
							alt="paytm" loading="lazy" class=" "
							data-testid="selectedUpiHandlerImage_paytm">
					</div>
					<p class="upi-text " data-testid="selectedUpiHandlerText_paytm">Paytm</p></li>
			</a> <a href="phonePay?id=<%=map.get("bill_id")%>">
				<li class="upi-item  " data-testid="upiHandlerSelectItem_phonePe"><div
						class="upi-img ">
						<img
							src="https://assets.airtel.in/static-assets/wallet-icons/phonepe.svg"
							alt="phonePe" loading="lazy" class=" "
							data-testid="selectedUpiHandlerImage_phonePe">
					</div>
					<p class="upi-text " data-testid="selectedUpiHandlerText_phonePe">PhonePe</p></li>
			</a> <a href="amazonPay?id=<%=map.get("bill_id")%>">
				<li class="upi-item  " data-testid="upiHandlerSelectItem_amazon"><div
						class="upi-img amazon">
						<img
							src="https://assets.airtel.in/static-assets/wallet-icons/amazon-pay.svg"
							alt="amazon" loading="lazy" class=" "
							data-testid="selectedUpiHandlerImage_amazon">
					</div>
					<p class="upi-text " data-testid="selectedUpiHandlerText_amazon">Amazon
						Pay</p></li>
			</a>
			</ul>
		</div>

	</div>
	</div>
	</div>
	</div>
	</div>


	<div class="col-md-5">


		<div class="upper-section" data-testid="paymentSummaryContainer">
			<div class="payment-summary" data-testid="paymentSummaryContainer">
				<h3 class="payment-summary-heading"
					data-testid="paymentSummaryHeading">Payment Summary</h3>
				<div class="payment-summary-container" style="max-height: 1000px;">
					<div class="heading-section">
						<h4 class="left-section">Total Bill To Pay</h4>
						<div class="right-section">
							<div>
								<h4>
									<img id="rupee" src="img/rupee.png"><%=map.get("totalBill")%>
								</h4>
							</div>
						</div>
					</div>
					<div class="pack-details-container"
						data-testid="packDetailContainer">
						<div class="pack-details-section" data-testid="packDetailsSection">
							<div class="left-section" data-testid="leftSection">

								<h6>
									Name :
									<%=map.get("uname")%>
								</h6>
								<h6>
									Email :
									<%=map.get("uemail")%>
								</h6>
								<h6>
									Customer No:
									<%=map.get("cno")%>
								</h6>


							</div>

						</div>
					</div>

					<div class="grand-total" data-testid="grandTotal">
						<h3>Amount Payable</h3>
						<h4>
							<img id="rupee" src="img/rupee.png"><%=map.get("totalBill")%>
						</h4>
					</div>
				</div>
			</div>

		</div>




	</div>
	</section>

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









