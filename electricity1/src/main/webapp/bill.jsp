<%@page import="java.io.PrintWriter"%>
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
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<style>
.new_bill_container {
	display: grid;
	justify-content: center;
	align-items: center;
}
</style>
<link rel="stylesheet" href="css/bill.css">
</head>

<body>
	<form action="bill" method="get">


		<%
		HashMap<String, String> map = (HashMap<String, String>) request.getAttribute("map");
		double d=Double.parseDouble(map.get("totalBill"));
		
		
		
		%>


		<div class="new_bill_container mt-5">
			<table width="100%" border="0" cellspacing="0" cellpadding="0"
				class="table_border_2">
				<%
				if (map.get("status").equals("Paid")) {
				%>
				<tbody>
					<tr class="center">
						<td align="center"><a class="center btn" href="#"
							onclick="window.print();"
							style="background-color: rgb(73, 164, 201); color: rgb(48, 30, 62); border-radius: 5px;"><strong><span
									id="lbllTitle">View Print/download</span> </strong></a></td>
					</tr>
				</tbody>
				<%
				}
				%>
			</table>
			<div class="separator"></div>
			<!-- page content starts -->
			<!-- Content Container starts here -->
			<input name="uiActionName" type="hidden" id="uiActionName"
				value="getPrintBillingData"> <input name="consumerNumber"
				type="hidden" id="consumerNumber"> <input name="BUnumber"
				type="hidden" id="BUnumber"> <br>
			<table width="56%" border="" cellspacing="0" cellpadding="0"
				class="table_border_2_new">
				<tbody>
					<tr class="center">
						<td align="center">
							<div id="NewBillMonthHeading-s-1" class="W700">
								<table width="100%" border="0" cellspacing="0" cellpadding="0"
									class="table_border_2">
									<tbody>
										<tr class="center">
											<td align="center" width="100%"><b> <label
													id="lblBillFor">Bill of Supply For:</label> <label
													id="billMonth"><%=map.get("month")%>-<%=map.get("year")%></label>
											</b></td>
										</tr>
									</tbody>
								</table>
								<table width="100%" border="0" cellspacing="0" cellpadding="0"
									class="table_border_2">
									<tbody>
										<tr>
											<td align="left"><label id="lblGSTIN">GSTIN of
													MSEDCL 27AAECM2933K1ZB</label></td>
											<td align="right"><label id="lblHSN">HSN code
													27160000 </label></td>
										</tr>
										<tr>
											<td align="left" class="grey_bg_new">BILL NO.(GGN): <label
												id="lblGGN">000002005144715</label> <label id="lblGGNStatus"
												style="color: Green;"></label>
											</td>
											<td align="right"></td>
										</tr>
									</tbody>
								</table>
							</div>
						</td>
					</tr>
					<tr class="center">
						<td align="center">
							<div id="NewName-s-2" class="left_right_container">
								<div class="left_side_new">
									<div class="table_container">
										<table width="100%" border="0" cellspacing="0" cellpadding="0"
											class="table_border_2_new">
											<tbody>
												<tr>
													<td align="left" class="grey_bg_new"><span
														id="lbllconsumerNumber1">Consumer No:</span> <label
														id="consumerNumber1"><%=map.get("cno")%></label> <label
														id="lblConStatus"></label></td>
													<td align="left"></td>
												</tr>
											</tbody>
										</table>
										<table width="100%" border="0" cellspacing="0" cellpadding="0"
											class="table_border_2_new">
											<tbody>
												<tr>
													<td align="left"><b> <label id="consumerName">
																<%=map.get("uname")%></label>
													</b></td>
												</tr>
												<tr>
													<td align="left" colspan="3"><label
														id="consumerAddress">Address :<%=map.get("city")%>
													</label> <label id="address2"> </label></td>
												</tr>
												<tr>
													<td align="left" class="grey_bg_new"><label
														id="lbllMobileEmail">Mobile/Email:</label></td>
													<td align="left"><label id="lblMobileEmail"><%=map.get("mno")%>/<%=map.get("uemail")%></label>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="right_side_new">
									<div class="table_container">
										<table width="100%" border="0" cellspacing="0" cellpadding="0"
											class="table_border_2_new">
											<tbody>
												<tr>
													<td align="left" width="120" class="grey_bg_new_new"><label
														id="lbllbillDate">Bill Date:</label></td>
													<td align="right" width="120"><label id="billDate"
														style="font-weight: bold; font-size: 13px"><%=map.get("month")%>-<%=map.get("year")%></label>
													</td>
												</tr>
												<tr>
													<td align="left" class="grey_bg_new_new"><label
														id="lbllroundBill1">Bill Amount Rs:</label></td>
													<td class="right" width="120"><strong> <label
															id="roundBill1"
															style="font-weight: bold; font-size: 13px"><%=map.get("totalBill")%></label>
													</strong></td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="separator_WhiteBorder"></div>
									<div class="table_container">
										<table width="100%" border="0" cellspacing="0" cellpadding="0"
											class="table_border_2_new">
											<tbody>
												<tr>
													<td align="left" class="grey_bg_new_new"><label
														id="lbllbillDueDate1">Due Date:</label></td>
													<td class="right"><label id="billDueDate1">15
															-<%=map.get("month")%></label></td>
												</tr>
												<tr>
													<td align="left" class="grey_bg_new_new"><label
														id="lbllnetBillDPC1">If Paid After Due Date:</label></td>
													<td class="right"><strong> <label
															id="netBillDPC1"><%=d=d+10%></label>
													</strong></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>

						</td>
					</tr>
					<tr>
						<td>
							<div class="separator_WhiteBorder"></div>
						</td>
					</tr>

					<tr class="center">
						<td align="center">
							<div id="NewReadingDetails-s-3" class="left_right_container">
								<div class="left_side_new_cons_details">
									<div class="table_container" style="height: 190px">
										<table width="100%" border="0" cellspacing="0" cellpadding="0"
											class="table_border_2_new">

											<tbody>
												<tr>
													<td align="left" class="grey_bg_new" style="width: 60%">
														<label id="lbllbillingUnit">Billing Unit:</label> <label
														id="billingUnit" style="font-weight: normal"><%=map.get("unitConsumed")%></label>
														:<label id="Bu1" style="font-weight: normal">TULSHIBAG
															S/DN.</label>
													</td>
													<td align="left" class="grey_bg_new"><label
														id="lbllsupplyDate">Supply Date:</label> <label
														id="supplyDate" style="font-weight: normal">05-Mar-2020</label>
													</td>
												</tr>
												<tr>
													<td align="left" class="grey_bg_new" style="width: 60%">
														<label id="lblltariff">Tariff/Category:</label> <label
														id="tariff" style="font-weight: normal">090</label> /<label
														id="category" style="font-weight: normal">LT I Res
															1-Phase</label>
													</td>
													<td align="left" class="grey_bg_new"><label
														id="lbllsanctionLoad">Sanct. Load:</label> <label
														id="sanctionLoad" style="font-weight: normal"> 1
															KW</label></td>
												</tr>

												<tr>
													<td align="left" class="grey_bg_new" style="width: 60%">
														<label id="lbllpoleNumber">Pole No:</label> <label
														id="poleNumber" style="font-weight: normal">000M/241</label>
													</td>
													<td align="left"><b><label
															id="lbllsecurityDepositHeld">Security
																Deposit(Rs):</label></b> <b> <label id="securityDepositHeld"
															style="font-weight: normal">1,086.50</label>
													</b></td>
												</tr>

												<tr>
													<td align="left" class="grey_bg_new" style="width: 40%">
														<label id="lbllprocessingCycle">PC/MR/Route
															Sequence/DTC:</label> <label id="processingCycle"
														style="font-weight: normal">3</label> / <label
														id="pcmrrouteSequence" style="font-weight: normal">08-3388-0891</label>
														/<label id="DTC" style="font-weight: normal">4685038</label>
													</td>
													<td align="left" class="grey_bg_new"><label
														id="lbllbillDateTo">Current Reading Date:</label> <label
														id="billDateTo" style="font-weight: normal">1-<%=map.get("month")%>-<%=map.get("year")%></label>
													</td>
												</tr>

												<tr>

													<td align="left" class="grey_bg_new" style="width: 60%">
														<label id="lbllmeterNumber1">Meter No:</label> <label
														id="meterNumber1" style="font-weight: normal"><%=map.get("cno")%></label>
														<label id="meterNumber2" style="font-weight: normal">
													</label>
													
												</tr>
												<tr>
													<td align="left" class="grey_bg_new"><label
														id="lbllReadingGroup">Reading Group:</label> <label
														id="lblReadingGroup" style="font-weight: normal">J3</label>
													</td>


													<td align="left" class="grey_bg_new"></td>

													<td class="left"></td>
												</tr>


											</tbody>
										</table>
										<table width="100%" border="0" cellspacing="0" cellpadding="0"
											class="table_border_2_new">



										</table>
										<div id="Bill_Circle1" class="Bill_Circle my-2">
											<table width="100%" cellspacing="0" cellpadding="0">
												<tbody>
													<tr style="height: 40px;">
														<td align="center" class="grey_bg_new"
															style="width: 80px;"><label id="lbllcurrentReading1">Current
																Reading</label></td>
														
														<td align="center" class="grey_bg_new"
															style="width: 80px;"><label id="lbllMF1">MF</label>
														</td>
														<td align="center" class="grey_bg_new"
															style="width: 80px;"><label id="lbllunit1">Unit</label>
														</td>
														<td align="center" class="grey_bg_new"
															style="width: 80px;"><label id="lblladjustmentUnit1">Adj.
																Unit</label></td>
														<td align="center" class="grey_bg_new"
															style="width: 80px;"><label id="lblltotal1">Total</label>
														</td>
													</tr>
													<tr>

														<td align="center"><label id="currentReading1"
															style="display: block;"> <%=map.get("unitConsumed")%></label>
															<label id="currentReading1M" style="display: none;">
														</label></td>
														
														<td align="center"><label id="MF1">01</label></td>
														<td align="center"><label id="unit1"><%=map.get("unitConsumed")%></label></td>
														<td align="center"><label id="adjustmentUnit1">0</label>
														</td>
														<td align="center"><label id="total1"> <%=map.get("unitConsumed")%></label></td>
													</tr>
													<!-- <tr>

                                                    <td align="center">
                                                        <label id="currentReading2"> </label>
                                                    </td>
                                                    <td align="center">
                                                        <label id="previouReading2"> </label>
                                                    </td>
                                                    <td align="center">
                                                        <label id="MF2"> </label>
                                                    </td>
                                                    <td align="center">
                                                        <label id="unit2"> </label>
                                                    </td>
                                                    <td align="center">
                                                        <label id="adjustmentUnit2"> </label>
                                                    </td>
                                                    <td align="center">
                                                        <label id="total2"> .</label>
                                                    </td>
                                                </tr> -->
												</tbody>
											</table>
										</div>

										<table width="100%" border="0" cellspacing="0" cellpadding="0"
											class="table_border_2_new">


											<tbody>
												<tr>
													<td align="left" class="grey_bg_new"><label
														id="meterStatus" style="display: block;">Meter
															status: NORMAL</label> <label id="meterStatusM"
														style="display: none;"> NORMAL</label></td>
													<td class="left"></td>
													<td class="left"></td>
												</tr>
												<tr>
													<td class="left"><label id="numberOfMonths">Bill
															Period: 1 Month(s)</label> /<label id="lblOldTariff"></label></td>
													<td align="left"></td>
													<td class="left"></td>
												</tr>
												<tr>
													<td align="center" colspan="3"><a class="center"
														href="#" onclick="GetMeterPhoto();"><strong>
														</strong></a></td>

												</tr>
												<tr>
													<td align="center" colspan="3"></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<!-- <div class="right_side_new">
                                <div class="table_container" style="height:220px">

                                    <table id="tblQRCode" width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tbody>
                                            <tr>
                                                <td align="left">
                                                    Scan this QR Code with BHIM App for UPI Payment
                                                </td>
                                                <td align="right">
                                                    <img id="ImgQrCode"
                                                        src="QRCode\GetQRCode.ashx?code=4100500028814685032023060501&amp;am=640"
                                                        style="height:105px;width:105px;border-width:0px;">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <label id="lblQRcodedetails">In case of payment by QR code, the
                                                        prompt payment discount or delay payment charges applicable as
                                                        per the payment date will be included in the next bill.</label>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>

                                </div>
                            </div> -->
							</div>
						</td>
					</tr>
					<!-- <tr>
                    <td>
                        <div class="separator_WhiteBorder">
                        </div>
                    </td>
                </tr>

                <tr>
                    <td>
                        <div class="separator_WhiteBorder">
                        </div>
                    </td>
                </tr> -->
					<!-- <tr class="center">
                    <td align="center">
                        <div id="NewMessage-s-5" class="W700_new">


                            <table id="tblImpandSpecialmsg" width="100%" border="0" cellspacing="0" cellpadding="0"
                                class="table_border_2">
                                <tbody>
                                    <tr class="left">
                                        <td align="justify">


                                            <span id="lblImportantMessage"><b> Important :</b><br>1.Register for e-bill
                                                instead of printed bill and get a go-green discount of Rs. 10 on each
                                                bill.For registration:-https://pro.mahadiscom.in/Go-Green/gogreen.jsp
                                                (The GGN number is available in the upper left corner of your printed
                                                bill.)<br>2. Pay electricity bill through digital medium and get 0.25%
                                                (up to Rs.500/-) discount (excluding taxes and duties).<br>3. If your
                                                mobile number and email address are incorrect, correct it by
                                                visiting-https://consumerinfo.mahadiscom.in/ <br>4.Next month's reading
                                                will mostly take place on 10-06-2023 .</span>

                                            <br>
                                            <span id="lbllSpecialMessage"><b>Special Message :</b><br></span>
                                        </td>
                                    </tr>
                                    <tr class="left">
                                        <td align="justify">


                                            <span id="lblMobileMessage">* Dear Consumer, Your registered mobile number
                                                is 76******94 For updation/registration of mobile number use Mahadiscom
                                                website or Mobile App or send sms to <b>9930399303</b> as follows <b>
                                                    MREG 410050002881</b></span>
                                            <br>
                                            <span id="lblGogreenmsg">* Please accept only computerized receipt with a
                                                computerized number when making any payment of MSEDCL. Handwritten
                                                receipts should not be accepted. Use the option of online payment
                                                facility to avoid inconvenience.</span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="separator_WhiteBorder">
                        </div>
                    </td>
                </tr> -->



					<tr class="center">
						<td align="center">
							<div class="W700_new"></div>
						</td>
					</tr>
					<!-- <tr>
                    <td>
                        <div class="separator_WhiteBorder">
                        </div>
                    </td>
                </tr> -->
					<tr class="center">
						<td align="center">
							<div id="NewMessage-s-6" class="W700_new">
								<table width="100%" border="0" cellspacing="0" cellpadding="0"
									class="table_border_2">
									<tbody>
										<tr class="center">
											<td align="center"></td>
										</tr>
									</tbody>
								</table>
							</div>
						</td>
					</tr>
					<tr class="center">
						<td align="center">
							<div id="NewSummery-s-7" class="left_right_container">
								<div class="left_side_new_summery">
									<div class="table_container">
										<table width="100%" border="0" cellspacing="0" cellpadding="0"
											class="table_border_2_new_border">
											<tbody>
												<tr>
													<td align="left" class="grey_bg_new"><label
														id="lbllBu2">Billing Unit:</label></td>
													<td class="grey_bg_new_light"><label id="Bu2"><%=map.get("unitConsumed")%></label>
													</td>
													<td align="left" class="grey_bg_new"><label
														id="lbllconsumerNumber2">Consumer No:</label></td>
													<td class="grey_bg_new_light"><label
														id="consumerNumber2"><%=map.get("cno")%></label></td>
													<td class="grey_bg_new"><label
														id="lbllprocessingCycle1">PC:</label></td>
													<td class="grey_bg_new_light"><label
														id="processingCycle1">J3</label></td>
													<td class="grey_bg_new"><label id="lblltariff1">Tariff:</label>
													</td>
													<td class="grey_bg_new_light"><label id="tariff1">090</label>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="table_container">
										<table width="100%" border="0" cellspacing="0" cellpadding="0"
											class="table_border_2_new_border">
											<tbody>
												<tr>
													<td align="left" class="grey_bg_new"><label
														id="lbllbillDueDate4">Due Date:</label></td>
													<td class="center"><label id="billDueDate4">15-<%=map.get("month")%>-<%=map.get("year")%></label>
													</td>
													<td class="right"><label id="roundBill2"><%=d%></label>

													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="right_side_new_summery">
									<div class="table_container">
										<table width="100%" border="0" cellspacing="0" cellpadding="0"
											class="table_border_2_new_border">


											<tbody>
												<tr id="trPromptPaymentDate">
													<td align="left" class="grey_bg_new"><label
														id="lbllpromptPaymentDate">If Paid by this Date:</label></td>
													<td class="center"><label id="promptPaymentDate">5-<%=map.get("month")%>-<%=map.get("year")%></label>
													</td>
													<td class="right"><label id="netBillPPD2"><%=map.get("totalBill")%></label>
													</td>
												</tr>

												<tr>
													<td align="left" class="grey_bg_new"><label
														id="lbllbillDueDate6">If Paid After this Date:</label></td>
													<td class="center"><label id="billDueDate6">5-<%=map.get("month")%>-<%=map.get("year")%></label>
													</td>
													<td class="right"><label id="netBillDPC2"><%=d%></label>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</td>
					</tr>
					<tr class="center">
						<td align="center">
							<div id="NewSummery-s-8" class="left_right_container">
								<div class="left_side_new_summery">
									<div class="table_container">
										<table width="100%" border="0" cellspacing="0" cellpadding="0"
											class="table_border_2_new_border">
											<tbody>
												<tr>
													<td align="left" class="grey_bg_new"><label
														id="lbllbankCopy">Bank Copy:</label></td>
													<td align="left" class="grey_bg_new"><label
														id="lbllDTC2">DTC No:</label></td>
													<td class="center"><label id="DTC2">4685038</label></td>

												</tr>
											</tbody>
										</table>
									</div>
									<div class="table_container">
										<table width="100%" border="0" cellspacing="0" cellpadding="0"
											class="table_border_2_new_border">
											<tbody>
												<tr>
													<td align="left" class="grey_bg_new"><label
														id="lbllBU3">Billing Unit:</label></td>
													<td class="grey_bg_new_light"><label id="BU3"><%=map.get("unitConsumed")%></label>
													</td>
													<td align="left" class="grey_bg_new"><label
														id="lbllconsumerNumber3">Consumer No:</label></td>
													<td class="grey_bg_new_light"><label
														id="consumerNumber3"><%=map.get("cno")%></label></td>
													<td class="grey_bg_new"><label
														id="lbllprocessingCycle2">PC:</label></td>
													<td class="grey_bg_new_light"><label
														id="processingCycle2">J3</label></td>
													<td class="grey_bg_new"><label id="lblltariff3">Tariff:</label>
													</td>
													<td class="grey_bg_new_light"><label id="tariff3">090</label>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="right_side_new_summery">
									<div class="table_container">
										<table width="100%" border="0" cellspacing="0" cellpadding="0"
											class="table_border_2_new_border">

											<tbody>
												<tr>
													<td align="left" class="grey_bg_new"><label
														id="lbllbillDueDate7">Due Date:</label></td>
													<td class="center"><label id="billDueDate7">15-<%=map.get("month")%>-<%=map.get("year")%></label>
													</td>
													<td class="right"><label id="roundBill3"><%=d%></label>
													</td>
												</tr>
												<tr id="trPromptPaymentDate5">
													<td align="left" class="grey_bg_new"><label
														id="lbllpromptPaymentDate5">If Paid by this Date:</label></td>
													<td class="center"><label id="promptPaymentDate5">15-<%=map.get("month")%>-<%=map.get("year")%></label>
													</td>
													<td class="right"><label id="netBillPPD3"><%=d%></label>
													</td>
												</tr>

												<tr>
													<td align="left" class="grey_bg_new"><label
														id="lbllbillDueDate8">If Paid After this Date:</label></td>
													<td class="center"><label id="billDueDate8">15-<%=map.get("month")%>-<%=map.get("year")%></label>
													</td>
													<td class="right"><label id="netBillDPC"><%=d+10%></label>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</td>
					</tr>

					<tr class="center mt-1">
						<td align="center">
							<div id="NewBillDetails-s-9" class="left_right_container">
								<div class="left_side_new_TC">
									<div class="table_container">
										<table width="100%" border="0" cellspacing="0" cellpadding="0"
											class="table_border_2_new">
											<tbody>
												<tr>
													<td align="left" class="grey_bg_new"><label
														id="lbllTerm">Terms &amp; Conditions:</label></td>
												</tr>
												<tr>
													<td align="left" style="padding-left: 10px">
														<ul style="list-style-type: none;">
															<li><label id="lbllTerm1">Electricity Duty
																	Calculation is as per government notification no
																	ELDP/P.No-273/Energy -1 dt 21/10/2016.Tax on Sale
																	calculation is as per Government notification dt
																	21/10/2016.For more information please check orders of
																	Electricity Regulatory commission. Fixed rate is used
																	for calculation till meter is installed.</label></li>
															<li><label id="lbllTerm2">1) Any discrepancy
																	in the bill should be conveyed in writing to the local
																	office.Even if there is discrepancy in bill, to avoid
																	delay payment charges, pay tentative amount for time
																	being or pay full amount along with application to
																	rectify the mistake in the bill. In case of dispute or
																	abnormally high bill amount, bill equal to average
																	consumption of previous period will be issued till the
																	complaint is resolved, The difference of which will be
																	charged in next bill.</label></li>
															<li><label id="lbllTerm3">2) For bill paid
																	after due date of previous bill and showing as arrears
																	in current bill, please show the previous bill receipt
																	to the cashier while paying for the current bill.</label></li>

															<li><label id="lbllTerm6">3) This bill is
																	sent in accordance with Electricty supply act , tariff
																	order , regulations and Orders as per Govt of
																	Maharashtra</label></li>
														</ul>
													</td>
												</tr>
											</tbody>
										</table>
										<table width="100%" border="0" cellspacing="0" cellpadding="0"
											class="table_border_2_new">
											<tbody>
												<tr>
													<td align="left" class="grey_bg_new"><label
														id="lbllTerm7">Instructions for Cheque payment:</label></td>
												</tr>
												<tr>
													<td align="left" style="padding-left: 10px">
														<ul>
															<li><label id="lbllTerm8"> 4) Cheque should
																	be a/c payee only. Cheque should be payable in name of
																	'MSEDCL', and issued by local bank. Please attach bill
																	with the Cheque and do not staple them. Post-dated
																	cheque will be not accepted.If amount is paid by
																	Cheque/DD, the date on which amount deposited in
																	'MSEDCL' bank account will consider as a bill payment
																	date.</label></li>
															<li><label id="lbllTerm9">5) While putting
																	cheque in collection drop box, please mention consumer
																	number (along with PC and BU) on the backside of the
																	cheque.</label></li>
															<!-- <li><label id="lbllTerm10">6) As per negotiable instrument act
                                                                1981 article 138,cheque bounce is a punishable offence
                                                                and liable for legal action.</label></li>
                                                        <li><label id="lbllTerm12">7) As per MERC order for Case No 322
                                                                of 2019 revised Cheque Bounce charges of Rs. 750 plus
                                                                GST or Bank charges whichever is higher will be
                                                                applicable from 01 April 2020.</label></li>  -->
														</ul>
													</td>
												</tr>

											</tbody>
										</table>
										<table width="100%" border="0" cellspacing="0" cellpadding="0"
											class="table_border_2_new">
											<tbody>
												<tr>
													<td align="left" class="grey_bg_new"><br></td>
												</tr>
												<tr>
													<td align="left" class="grey_bg_new"><label
														id="lbllmessage_pre">Revised Tariff applicable wef
													</label> <label id="message">01-APR-23</label> <label
														id="lbllmessage_post"></label></td>

												</tr>
											</tbody>
										</table>
										<table id="tblTariffMapping" width="100%" border="0"
											cellspacing="0" cellpadding="0"
											class="table_border_2_new_border">
											<tbody>
												<tr id="Tr1">
													<td align="center" class="grey_bg_new" width="10%"><label
														id="lblTariffInfoTM">LT I Res 1-Phase</label></td>
													<td align="center" class="grey_bg_new" width="10%"><label
														id="lbllUnit">Unit</label></td>
													<td align="center" class="grey_bg_new" width="10%"><label
														id="lblMIN_UNIT">0-100</label></td>
													<td align="center" class="grey_bg_new" width="10%"><label
														id="lblSLAB1_EC_LIMIT">101-300</label></td>
													<td align="center" class="grey_bg_new" width="10%"><label
														id="lblSLAB2_EC_LIMIT">301-500</label></td>
													<td align="center" class="grey_bg_new" width="10%"><label
														id="lblSLAB3_EC_LIMIT">501-1000</label></td>
													<td align="center" class="grey_bg_new" width="10%"><label
														id="lblLIMITING_SLAB">&gt;1000</label></td>
												</tr>
												<tr id="Tr2">
													<td align="center" width="10%"><label
														id="lblFixChargesTM_pre">Fix Charges(Rs):</label> <label
														id="lblFixChargesTM">116</label> <label
														id="lblFixChargesTM_post"></label></td>
													<td align="center" width="10%"><b><label
															id="lbllAmount">Amt(Rs)</label></b></td>
													<td align="center" width="10%"><label
														id="lblMIN_CHARGE">4.41</label></td>
													<td align="center" width="10%"><label
														id="lblSLAB1_EC_RATE">9.64</label></td>
													<td align="center" width="10%"><label
														id="lblSLAB2_EC_RATE">13.61</label></td>
													<td align="center" width="10%"><label
														id="lblSLAB3_EC_RATE">15.57</label></td>
													<td align="center" width="10%"><label
														id="lblLIMITING_SLAB_RATE">15.57</label></td>
												</tr>
												<tr id="tblFACMapping">
													<td align="center" width="10%"><label id="lblFACInfo">
													</label></td>
													<td align="center" width="10%"><b><label
															id="lblllFAC">FAC(Rs)</label></b></td>
													<td align="center" width="10%"><label
														id="lblMIN_CHARGE_FCA">0</label></td>
													<td align="center" width="10%"><label
														id="lblSLAB1_FCA_RATE">0</label></td>
													<td align="center" width="10%"><label
														id="lblSLAB2_FCA_RATE">0</label></td>
													<td align="center" width="10%"><label
														id="lblSLAB3_FCA_RATE">0</label></td>
													<td align="center" width="10%"><label
														id="lblLIMITING_SLAB_RATE_FCA">0</label></td>
												</tr>
											</tbody>
										</table>

									</div>
									<!-- 
								<label id="lbllmsgOthFixcharge"><b>** As per the new
										electricity rates applicable from 01.04.2020, an additional
										fixed charge of Rs.10 per month will be levied on consumers in
										the municipal corporation area.</b></label>-->
									<b><b> </b></b>
								</div>

								<b><b>
										<div class="right_side_new_BillDetails">
											<div class="table_container">
												<table width="100%" border="0" cellspacing="0"
													cellpadding="0" class="table_border_2_new_border">
													<tbody>
														<tr>
															<td align="left" class="grey_bg_new"><label
																id="lbllconsumerNumber4">Consumer No:</label> <label
																id="consumerNumber4"><%=map.get("cno")%></label></td>

														</tr>

													</tbody>
												</table>
											</div>
											<!-- <div class="separator_WhiteBorder">
                                        </div> -->
											<div class="table_container">
												<table width="100%" border="0" cellspacing="0"
													cellpadding="0" class="table_border_2_new_border">
													<tbody>
														<tr>
															<td align="left"><label id="lbldescription"></label>
															</td>

															<td class="right"><label id="lbllRupees">Rs.
																	Ps.</label></td>

														</tr>
														<tr>
															<td align="left"><label id="lbllfixedCharges">Fixed
																	Charges</label></td>

															<td class="right"><label id="fixedCharges">00</label>
															</td>
														</tr>
														<tr>
															<td align="left"><label id="lbllenergyCharges">Energy
																	Charges</label></td>

															<td class="right"><label id="energyCharges">00</label>
															</td>
														</tr>

														<tr>
															<td align="left"><label id="lbllw_charge">Wheeling
																	Charges</label> <label id="lblw_charge">1.17 / </label> <label
																id="lblw_charge_unit">Unit</label></td>

															<td class="right"><label id="w_charge"><%=map.get("totalBill")%></label>
															</td>
														</tr>
														<tr>
															<td align="left"><label id="lbllFAC">F.A.C.</label></td>

															<td class="right"><label id="FAC">0.00</label></td>
														</tr>
														<tr>
															<td align="left"><label id="lbllelectricityDuty">Electricity
																	Duty</label> <label id="lblelectricityDuty">(16 %)</label></td>

															<td class="right"><label id="electricityDuty">00</label>
															</td>
														</tr>

														<tr>
															<td align="left"><label id="lblltaxOnSale">Tax
																	on Sale</label> <label id="lbltaxOnSale">0/ </label> <label
																id="lbltaxOnSale_unit">Unit</label></td>

															<td class="right" colspan="2"><label id="taxOnSale">0.00</label>
															</td>
														</tr>

														<tr>
															<td align="left" class="grey_bg_new"><label
																id="lbllcurrentInterest">Current Interest</label></td>

															<td class="right"><label id="currentInterest">0.00</label>
															</td>
														</tr>

														<tr>
															<td align="left"><label id="lbllotherCharges">Other
																	Charges</label></td>

															<td class="right" colspan="2"><label
																id="otherCharges">0.00</label></td>
														</tr>
														<tr>
															<td align="left" class="grey_bg_new"><label
																id="lblltotalAmount">Total Current Bill(Rs)</label></td>

															<td class="grey_bg_new right"><label
																id="totalAmount"><%=map.get("totalBill")%></label></td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="table_container">
												<table width="100%" border="0" cellspacing="0"
													cellpadding="0" class="table_border_2_new_border">
													<tbody>
														<tr>
															<td align="left" width="50%"><label
																id="lbllnetArrears">Net Arrears</label></td>
															<td class="right"><label id="netArrears">00</label>
															</td>
														</tr>
														<tr>
															<td align="left"><label id="lblladjustments">Adjustments</label>
															</td>
															<td class="right"><label id="adjustments">0.00</label>
															</td>
														</tr>
														<tr>
															<td align="left"><label id="lbllinterestArrears">Interest
																	Arrears</label></td>
															<td class="right"><label id="interestArrears">0.00</label>
															</td>
														</tr>
														<tr>
															<td align="left"><label id="lblltotalArrears">Total
																	Arrears</label></td>
															<td class="right"><label id="totalArrears">00.00</label>
															</td>
														</tr>
														<tr>
															<td align="left"><label id="lbllnetBillAmount">Net
																	Bill Amount</label></td>
															<td class="right"><label id="netBillAmount"><%=map.get("totalBill")%></label>
															</td>
														</tr>
														<tr>
															<td align="left" class="grey_bg_new"><label
																id="lbllroundedBill">Rounded Bill(Rs)</label></td>
															<td class="grey_bg_new right"><label
																id="roundedBill"><%=map.get("totalBill")%></label></td>
														</tr>



													</tbody>
												</table>
											</div>
											<div class="gey_box">
												DPC:<label id="DPC">7.98</label><br> After this date: <label
													id="billDueDate3">5-<%=map.get("month")%>-<%=map.get("year")%></label>
												<br> Pay <span class="red">Rs. <label
													id="cnetBillDPC"><%= d%></label>
												</span> <br>
												<br>
												<span class="red">Bill Status. <label
													id="cnetBillDPC"><%=map.get("status")%></label> <strong>
														<font color="#ff0000" size="2"> </font>
												</strong> </strong> <br> <strong> <font color="#ff0000" size="2">

													</font>
												</strong> <br> <strong> <font color="#ff0000" size="2"><b>

														</b></font>
												</strong> <br> <%if(map.get("status").equals("pending")){ %>
													<div class="table_container"
														style="border: 1px solid black">
														<table width="100%" border="0" cellspacing="0"
															cellpadding="0">

															<td><br> <a
																href="getway?id=<%=map.get("bill_id")%>">
																	<button type="button"
																		class="btn btn-primary py-4">Confirm
																		Payment</button>
															</a></td>
															</tr>


															</tbody>
														</table>


														<br> <br> <br> <br>


														<!-- Content Container end here -->
													</div> <%} %> <script
														src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
														integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
														crossorigin="anonymous"></script> <script
														src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
														integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
														crossorigin="anonymous"></script>
</body>

</html>