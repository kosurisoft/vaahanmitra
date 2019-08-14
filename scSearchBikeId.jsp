<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page
	import="com.vaahanmitra.model.*,com.vaahanmitra.daoImpl.*,com.vaahanmitra.dao.*,com.vaahanmitra.service.*,java.util.*"%>
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
<style>
.td {
	font-size: small;
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
								<%
									String message = (String) request.getAttribute("failure");
								%>
								<form action="./SCSearchBikeIdController" method="post">
									<div class="col-md-12" id="one1">
											SEARCH BIKE REQUESTER
											<%
											String email = (String) session.getAttribute("user");
											GetBikeBrands requester = new GetBikeBrands();
											ArrayList<UsedBike> bike = requester.getUsedBikeId(email);
											Iterator it = bike.iterator();
										%>
										
									</div>
									<br> <br>
									<div class="col-md-12"></div>

                                      			<div class="row">
							<div class="col-sm-4">
							<label style="float: left;">Bike ID : </label>
							<select name="bikeId" class="form-control" required
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
							<div class="col-sm-2">
							<label style="float: left; color:#fff;">ggb</label>
							<button type="submit" class="btn btn-info btn-block" style="border: 1px; border-radius: 4px;">SEARCH</button>	
							</div>
						    </div>
						   
									<div class="col-md-2"></div>
									<br>
									<div class="col-md-12" align="center">
										<%
											if (message != null) {
										%>
										<h5 style="color: red"><%=message%>
										</h5>
										<%
											} else {
											}
										%>
									</div>


								</form>
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
