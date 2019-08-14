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
	pageEncoding="ISO-8859-1"%>
<%@page
	import="com.vaahanmitra.model.*,com.vaahanmitra.daoImpl.*,com.vaahanmitra.dao.*,com.vaahanmitra.service.*,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<script src="./css/carmodels1.js" type="text/javascript"></script>
<jsp:include page="./sparePartsMenu.jsp" />
<jsp:include page="./topMenu.jsp"></jsp:include>
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
	function getVehicleBrand(str) {
		if (str == "") {
			document.getElementById("txtHint10").innerHTML = "";
			return;
		}
		if (window.XMLHttpRequest) {
			// code for IE7+, Firefox, Chrome, Opera, Safari  
			xmlhttp = new XMLHttpRequest();
		} else {
			// code for IE6, IE5  
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("txtHint10").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "./getSpBrand.jsp?spBrand=" + str, true);
		xmlhttp.send();
	}
</script>
<script>
function getSpModel(str)
{
	if (str=="")  
	{  
		document.getElementById("txtHint11").innerHTML="";  
		return;  
		}  
	if (window.XMLHttpRequest)  
	{
		// code for IE7+, Firefox, Chrome, Opera, Safari  
		xmlhttp=new XMLHttpRequest();  
		}
	else  
	{
		// code for IE6, IE5  
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");  
		}
	xmlhttp.onreadystatechange=function()  
	{  
		if (xmlhttp.readyState==4 && xmlhttp.status==200)    
		{    
			document.getElementById("txtHint11").innerHTML=xmlhttp.responseText;    
			}  
		}
	xmlhttp.open("GET","./getSpModels.jsp?brand="+str,true);   
	xmlhttp.send();    
	}
	</script>
</head>

<body>
	<div class="main-wrapper">
		<div class="app" id="app">
			<header class=""> </header>
			<div class="sidebar-overlay" id="sidebar-overlay"></div>
			<article class="content responsive-tables-page"
				style="background-color:#fff"> <section class="section">
			<div class="row">
				<div class="col-md-12" align="center">
					<h3 style="">SPARE PARTS DASHBOARD</h3>
				</div>
				<div class="col-md-12">
					<div class="card"
						style="background: #fff; box-shadow: 0px 0px 2px 1px rgba(0, 0, 0, 0.15); border-bottom: 3px solid #a3b745; border-radius: 10px">
						<div class="card-block" style="border-bottom: 3px solid #a3b745;">
							<section class="example">
							<div class="table-responsive well">
								<form action="./SearchSpareParts" method="GET">
									<div class="col-md-12"
										style="text-align: center; background-color: #523f6d; color: #fff;border-radius: 10px">
										<em>SEARCH SPARE PARTS</em>
									</div>

									<%
										String vehicleType = (String) request.getAttribute("vehicleType");
										String brandid = (String) request.getAttribute("vehicleBrand");
										String user_name = (String) request.getAttribute("user_name");
										String carModel = (String) request.getAttribute("vehicleModel");
										String sku = (String) request.getAttribute("sku");
										String partName = (String) request.getAttribute("partName");
									%>

									<div class="col-md-12">
										<br>
									</div>
									
									<div class="col-md-8" align="center">
									<label><b>Vehicle Type</b></label>
										<select name="vehicleType" class="form-control" id="spBrand"
											onchange="getVehicleBrand(this.value)">
											<option value="SELECT" style="display: none;">Vehicle
												Type</option>
											<option value="4,2,">All</option>
											<option value="2,">TWO WHEELER</option>
											<option value="4,">FOUR WHEELER</option>
										</select>
									</div>
									
									<div class="col-md-4" align="center">
									<label><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></label>
										<button
											style="background-color: #a3b745; border: 1px solid #a3b745; border-radius: 10px"
											class="btn btn-primary">SEARCH</button>

									</div>
									<div class="col-md-12"><br></div>
								</form>
							</div>
							</section>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<tr>
					<td colspan="3"><center>
							
						</center></td>
				</tr>
				<div class="col-md-12">
					<div class="card"
						style="background: #fff; box-shadow: 0px 0px 2px 1px rgba(0, 0, 0, 0.15); border-bottom: 3px solid #a3b745; border-radius: 10px">
						<div class="card-block"
							style="border-bottom: 3px solid #a3b745; border-radius: 10px">
							<section class="example">
							<div class="table-responsive">
								<table class="table table-striped table-bordered table-hover">
									<%
									int page1 = 0, noofrecords = 0, maxrowsperpage = 0;
									ArrayList<SpareParts> al = new ArrayList<SpareParts>();
								%>

								
									<tr>
										<th style="text-align: center">Vehicle Type</th>
										<th style="text-align: center">Brand NAME</th>
										<th style="text-align: center"></th>
									</tr>
									<%
											if (true) {
										%>
										<tr>
											<td colspan="11" align="center"><font color=red>No
													Records Found</font></td>
										</tr>
										<%
											} else {}
										%>
									<div class="container">
										<c:forEach var="spss1" items="${spdetails}">
												<tr>
													
													<td style="text-align: center"><c:out
															value="${spss1.SP_NAME}"></c:out></td>
													<td style="text-align: center"><c:out
															value="${spss1.VEHICLE_BRAND}"></c:out></td>
													<td><b>UPDATE</b>
												<form action="./UpdateBoServingBrand" method="post">
													<input	type="hidden" name="status" value="${spss1.STATUS}"/>
													<input	type="submit" name="status" value="UPDATE"/>
												</form>
												</td>
												
											</tr>
											
										</c:forEach>
									</div>
								</table>
								<!--  Pagination here -->
							</div>
							</section>
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
	<script language="javascript">
		populateBrands("brand", "model");
	</script>
	<script src="js/vendor.js"></script>
	<script src="js/app.js"></script>
</body>

</html>
