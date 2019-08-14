<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page
	import="com.vaahanmitra.model.*,com.vaahanmitra.daoImpl.*,com.vaahanmitra.dao.*,com.vaahanmitra.service.*,java.util.*"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<script src="./css/carmodels1.js" type="text/javascript"></script>
<jsp:include page="./carMenu.jsp" />
<jsp:include page="./topMenu.jsp" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Vaahanmitra</title>
<link href="assets/images/cg1.png" type="icon/img" rel="icon">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="apple-touch-icon.png">
<!-- Place favicon.ico in the root directory -->
<link rel="stylesheet" href="css/vendor.css">
<!-- Theme initialization -->
<script>
	var themeSettings = (localStorage.getItem('themeSettings')) ? JSON
			.parse(localStorage.getItem('themeSettings')) : {};
	var themeName = themeSettings.themeName || '';
	if (themeName) {
		document
				.write('<link rel="stylesheet" id="theme-style" href="css/app-' + themeName + '.css">');
	} else {
		document
				.write('<link rel="stylesheet" id="theme-style" href="css/app.css">');
	}
</script>
<script>
	function myFunction(string) {
		var myWindow = window.open("./usedCarDetails.jsp?CAR_ID=" + string,
				"myWin", "left=250, top=150, width=1150, height=330");
	}
</script>
<style>
.button {
	display: inline-block;
	border-radius: 4px;
	background-color: #4CAF50;
	border: none;
	color: #FFFFFF;
	text-align: center;
	font-size: 14px;
	padding: 2px 2px;
	width: 120px;
	transition: all 1s;
	cursor: pointer;
	margin: 5px;
}

.button span {
	cursor: pointer;
	display: inline-block;
	position: relative;
	transition: 1s;
}

.button span:after {
	content: '\00bb';
	position: absolute;
	opacity: 0;
	top: 0;
	right: -20px;
	transition: 0.5s;
}

.button:hover span {
	padding-right: 20px;
}

.button:hover span:after {
	opacity: 1;
	right: 0;
}
        #individual1{
        border-radius: 7px;
        box-shadow: 0px 0px 2px 1px rgba(0, 0, 0, 0.15);
        border-bottom: 3px solid #a3b745 !important;
        }
        #one1{
	text-align: center;
    font-size: 21px;
    color: #000;
    font-family: sans-serif;
    border-radius: 9px;
	    }
	    .form-control {
    display: block;
    width: 100%;
    padding: .15rem .75rem;
    font-size: 1rem;
    line-height: 1.5;
    color: #55595c;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: .25rem;
}
label {
    display: inline-block;
    margin-bottom: .5rem;
    font-size: 17px;
    font-weight: 400;
}
</style>
<script>
	function printPageArea(areaID) {
		var printContent = document.getElementById(areaID);
		var WinPrint = window.open('', '', 'width=900,height=650');
		WinPrint.document.write(printContent.innerHTML);
		WinPrint.document.close();
		WinPrint.focus();
		WinPrint.print();
		WinPrint.close();
	}
</script>
<style>
.td {
	font-size: small;
}
</style>
</head>

<body>
	<div class="main-wrapper">
		<div class="app" id="app">

			<header class="" style="font-family: 'Oswald', sans-serif;">

			<div class="header-block header-block-nav"></div>
			</header>
			<br>

			<article class="content responsive-tables-page"
				style="background-color:#fff"> <section class="section">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div align="center">
						<h3>SERVICE CENTER DASHBOARD</h3>
					</div>
				</div>

				<div class="col-md-12 col-xs-12 col-sm-12">
					<div class="card" id="individual1">
						<div class="card-block">
							<div class="">
								<form action="./SearchIOCarRequester" method="post" align="center">
									<div class="col-md-12" id="one1">
										SEARCH YOUR CAR REQUESTER
										</div>
										<%
												String email = (String) session.getAttribute("user");
												GetUsedCarDetails requester = new GetUsedCarDetails();
												ArrayList<UsedVehicleGetRequester> car = requester.getCarIds(email,"4");
												Iterator it = car.iterator();
											%>
										<br>
									
									<div class="row">
							<div class="col-sm-4">
							<label style="float: left;">Car ID : </label>
							<select name="carId" class="form-control " required
											oninvalid="this.setCustomValidity('Please select CarId')"
											oninput="setCustomValidity('')">
											<option value="">Select Car ID</option>
											<option value="all">ALL</option>
											<div class="form-group">
												<%
													while (it.hasNext()) {
														for (int i = 0; i < car.size(); i++) {
															UsedVehicleGetRequester ac = (UsedVehicleGetRequester) it.next();
												%>
												<option><%=ac.getVEHICLE_ID()%></option>
												<%
													}
													}
												%>
											</div>
										</select>
						         	</div>
							
							<div class="col-sm-3">
							<label style="float: left;">From Date :</label>
							<input type="date" name="fdate" class="form-control "
											placeholder="Enter From DATE" style="line-height:24px;"></input>
							</div>
							
							<div class="col-sm-3">
							<label style="float: left;">From Date :</label>
							<input type="date" name="tdate" class="form-control"
											placeholder="Enter To DATE" style="line-height:24px;"></input>
							</div>
					
							<div class="col-sm-2">
							<label style="float: left; color:#fff;">ggb</label>
							<button type="submit" class="btn btn-info btn-block" style="border: 1px; border-radius: 4px;">SEARCH</button>	
							</div>
							
					
						    </div>

									
									<div class="col-md-2"></div>
									<br> <br>
									<div class="col-md-12" align="center">
									</div>
								</form>
							</div>
							
						</div>
					</div>
				</div>
				<div align="center">
					<%
						ArrayList<UsedCar> caral = (ArrayList<UsedCar>) request.getAttribute("carDetails");
						if (caral != null && caral.size() > 0) {
					%>
					<h5>
						<b style="color: #fc7f0a"><%="Your Requester Car Details"%></b>
					</h5>
					<%
						} else if (caral == null) {} else {
					%>
					<h5>
						<b style="color: #fc7f0a"><%="No Request"%></b>
					</h5>
					<%
						}
					%></div>
				<br>&nbsp;&nbsp;
				<div class="row">
					<div class="col-md-12">
						<div class="card" id="individual1">
							<div class="card-block">
								<div class="table-responsive">
									<form action=""
										method="post">
										<div id="printableArea">
										<table class="table table-striped table-bordered table-hover">
											<tr>
												<th style="text-align: center">CAR ID</th>
												<th style="text-align: center">CAR OWNER NAME</th>
												<th style="text-align: center">EMAIL</th>
												<th style="text-align: center">MOBILE NO</th>
												<th style="text-align: center">REQUESTER DATE</th>
											</tr>
											<c:forEach var="caral" items="${carDetails}">
												<tr>
													<td align="center"><abbr title="clickme"> <a
															onclick="myFunction('${caral.GEN_CAR_ID}')"><font
																size="4" color="#FF9900"> <c:out
																		value="${caral.GEN_CAR_ID}"></c:out></font></a></abbr></td>
													<td style="text-align: center"><c:out
															value="${caral.CAR_OWNER_NAME}"></c:out></td>
													<td style="text-align: center"><c:out
															value="${caral.EMAIL_ID}"></c:out></td>
													<td style="text-align: center"><c:out
															value="${caral.MOBILE_NO}"></c:out></td>
													<td style="text-align: center"><c:out
															value="${caral.REQUESTER_DATE}"></c:out></td>
												</tr>
											</c:forEach>
										<tr>
													<td colspan="5" align="right"><a style="border-radius:10px"
														href="javascript:void(0);" class="btn btn-primary"
														onclick="printPageArea('printableArea')"> Print Page</a></td>
												</tr>
											</table>
										</div>
									</form>
								</div>
								
							</div>
						</div>
					</div>
				</div>
			</div>
			</section> </article>
			<footer class="footer">
			<div class="footer-block buttons"></div>
			<div class="footer-block author">
				<ul>
					<li>created by <a href="#">Kosuri Soft Pvt Ltd</a>
					</li>
					<li><a href="www.kosurisoft.com">get in touch</a></li>
				</ul>
			</div>
			</footer>

			<!-- /.modal -->

			<!-- /.modal -->
		</div>
	</div>

	<div class="ref" id="ref">
		<div class="color-primary"></div>
		<div class="chart">
			<div class="color-primary"></div>
			<div class="color-secondary"></div>
		</div>
	</div>
	<script src="js/vendor.js"></script>
	<script src="js/app.js"></script>
	<script language="javascript">
		populateBrands("brand", "model");
 	</script>
	<pre>
 	</pre>
	<footer>Copyright &copy; vehicletracking.com</footer>
</body>
</html>