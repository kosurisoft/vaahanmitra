<%
try {
    response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache");
    response.setDateHeader ("Expires", 0);
    
    System.out.println(session.getAttribute("user"));
    
    if (session.getAttribute("user")==null) {
    	%>
<jsp:forward page="./login3.jsp" ></jsp:forward>   <% }
    else {}
}
catch(Exception ex) {
    out.println(ex);
}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="com.vaahanmitra.model.*,java.util.*" pageEncoding="ISO-8859-1"%>
<%@page
	import="com.vaahanmitra.model.*,com.vaahanmitra.daoImpl.*,com.vaahanmitra.dao.*,com.vaahanmitra.service.*,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<jsp:include page="./individualOwner.jsp"/>
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
   var myWindow = window.open("./usedBikeDetails.jsp?BIKE_ID="+string, "myWin", "left=250, top=150, width=1150, height=330");
}</script>
<style>
.td {
	font-size: small;
}
</style>
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
						<h3>INDIVIDUAL OWNER DASHBOARD</h3>
					</div>
				</div>


				<div class="col-md-12 col-xs-12 col-sm-12">
					<div class="card"
						style="background: #fff; box-shadow: 0px 0px 2px 1px rgba(0, 0, 0, 0.15); border-bottom: 3px solid #a3b745; border-radius: 10px">
						<div class="card-block"
							style="border-bottom: 3px solid #a3b745; border-radius: 10px;">
							<section class="example">
							<div class="table-responsive well">
								<form action="./IOSearchBikeDateController"
									method="post">
									<div class="col-md-12" style="background-color: #523f6d; border-radius: 10px">
										<div align="center"
											style="text-align: center; background-color: #523f6d; color: #fff;">
											SEARCH BIKE REQUESTER
											<%
												String email = (String) session.getAttribute("user");
												GetBikeBrands requester = new GetBikeBrands();
												ArrayList<UsedBike> bike = requester.getUsedBikeId(email);
												Iterator it = bike.iterator();
											%>
											</div>
									</div>
									<br> <br>
									<div class="col-md-12"></div>

									<div class="col-md-3 col-sm-12 ">
										<label><b>BIKE ID</b></label><select name="bikeId"
													class="form-control" required
													oninvalid="this.setCustomValidity('Please select BikeId')"
													oninput="setCustomValidity('')">
														<option value="">Select Bike ID</option>
														<option value="all">ALL</option>
														<div class="form-group">
															<%
																while (it.hasNext()) {
																	for (int i = 0; i < bike.size(); i++) {
																		UsedBike ub = (UsedBike) it.next();
															%>
															<option><%=ub.getGEN_BIKE_ID()%></option>
															<%
																}
																}
															%>
														</div>
										</select>
									</div>
									<div class="col-md-3" style="margin-bottom: 6px">
										<label><b> FROM DATE</b></label><input type="date" name="fdate"
													class="form-control" placeholder="Enter From DATE"></input></div>

									<div class="col-md-3" style="margin-bottom: 6px">
										<label><b>TO DATE</b></label> <input type="date" name="tdate"
													class="form-control" placeholder="Enter To DATE"></input></div>
									<div class="col-md-3" align="center">
										<br>
										<button TYPE="submit"
											style="background-color: #a3b745; border: 1px solid #a3b745; border-radius: 10px"
											class="btn btn-primary">SEARCH</button>
									</div>
									<div class="col-md-2"></div>
									<br> <br>
								</form>
							</div>
							</section>
						</div>
					</div>
				</div>
				<br>&nbsp;<br>
				<%
					String count = (String) request.getAttribute("countValue");
				%>

				<br>
				<td stytle="margin-right: 1080px;"><b>&nbsp;&nbsp;&nbsp;NO OF REQUESTERS :</b><b
					style="color: #FF9900"><%=count%> </b></td> <br>&nbsp
				<div class="row">
					<div class="col-md-12">
						<div class="card"
							style="background: #fff; box-shadow: 0px 0px 2px 1px rgba(0, 0, 0, 0.15); border-bottom: 3px solid #a3b745; border-radius: 10px">
							<div class="card-block" style="border-bottom: 3px solid #a3b745;">
								<section class="example">
								<div class="table-responsive">
									<form action="./"
										method="post">
										<div id="printableArea">
										<table class="table table-striped table-bordered table-hover">
											<%
												ArrayList<UsedVehicleGetRequester> bikeal = (ArrayList<UsedVehicleGetRequester>) request
														.getAttribute("success");
											%>
											<tr>
												<th style="text-align:center">BIKE ID</th>
												<th style="text-align:center">NAME</th>
												<th style="text-align:center">EMAIL</th>
												<th style="text-align:center">MOBILE NO</th>
												<th style="text-align:center">REQUESTER DATE</th>
											</tr>
											<c:forEach var="bikeal" items="${success}">
												<tr>
													<tr>
													<td align="center"><abbr title="clickme">
													<a  onclick="myFunction('${bikeal.VEHICLE_ID}')"><font size="4" color="#FF9900">
													<c:out value="${bikeal.VEHICLE_ID}"></c:out></font></a></abbr></td>
													<td align="center"><c:out value="${bikeal.NAME}"></c:out></td>
													<td align="center"><c:out value="${bikeal.EMAIL}"></c:out></td>
													<td align="center"><c:out value="${bikeal.MOBILE_NO}"></c:out></td>
													<td align="center"><c:out value="${bikeal.REQUESTER_DATE}"></c:out></td>
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
								</section>
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
	<!-- Reference block for JS -->
	<div class="ref" id="ref">
		<div class="color-primary"></div>
		<div class="chart">
			<div class="color-primary"></div>
			<div class="color-secondary"></div>
		</div>
	</div>
	<script src="js/vendor.js"></script>
	<script src="js/app.js"></script>
</body>
</html>