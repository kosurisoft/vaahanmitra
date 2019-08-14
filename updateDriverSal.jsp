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
<%@ page language="java" import="com.vaahanmitra.daoImpl.*,com.vaahanmitra.model.*,com.vaahanmitra.service.*,java.util.*,java.io.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<script src="./css/carmodels1.js" type="text/javascript"></script>
<jsp:include page="./DriverMenu.jsp" />
<jsp:include page="./topMenu1.jsp" />
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
	.td{
	 font-size: small;
	}
	</style>
	
	<script type="text/javascript">
	  function CheckNumeric(e) {
		    
		     if (window.event) // IE 
		     {
		         if ((e.keyCode < 48 || e.keyCode > 57) & e.keyCode != 8) {
		             event.returnValue = false;
		             return false;

		         }
		     }
		     else { // Fire Fox
		         if ((e.which < 48 || e.which > 57) & e.which != 8) {
		             e.preventDefault();
		             return false;

		         }
		     }
		 }
	</script>
	
		<style>
	 :required:focus {
	   box-shadow: 0  0 6px rgba(255,0,0,0.5);
	   border: 1px red solid;
	   outline: 0;
	 }
	</style>
	
</head>

<body>
	<div class="main-wrapper">
		<div class="app" id="app">


			<header class="">
			<div class="header-block header-block-collapse hidden-lg-up">
				<button class="collapse-btn" id="sidebar-collapse-btn">
					<i class="fa fa-bars"></i>
				</button>
			</div>

			<div class="header-block header-block-nav">
<!-- 				<ul class="nav-profile"> -->

<!-- 					<li class="profile dropdown"><a -->
<!-- 						class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" -->
<!-- 						role="button" aria-haspopup="true" aria-expanded="false"> -->
<!-- 							<div class="img" style=""></div> <span class="name"> Mohan -->
<!-- 								Amasa</span> -->
<!-- 					</a> -->
<!-- 						<div class="dropdown-menu profile-dropdown-menu" -->
<!-- 							aria-labelledby="dropdownMenu1"> -->

<!-- 							<a class="dropdown-item" href="#"> <i -->
<!-- 								class="fa fa-power-off icon"></i> Logout -->
<!-- 							</a> -->
<!-- 						</div></li> -->
<!-- 				</ul> -->
			</div>
			</header>
			<div class="sidebar-overlay" id="sidebar-overlay"></div>
			<article class="content responsive-tables-page" style="background-color:#fff"> 
			<section class="section">
			<div class="row">
				<div class="col-md-12">
					<div class="card" style="background: #fff; box-shadow: 0px 0px 2px 1px rgba(0,0,0,0.15);border-bottom: 3px solid #a3b745;">
						<div class="card-block" style="border-bottom: 3px solid #a3b745;">
							<section class="example">
							<div class="table-responsive">
									<form action="./UpdateDriverSal" method="post">
								
								<%
							
								HttpSession salSession=request.getSession();
								String userId=(String)salSession.getAttribute("user");
								GetDriverDetails hm=new GetDriverDetails();
								InsertDriverPreRtsAndSal driverSal=hm.getDriverSalary(userId);

								String message=(String)request.getAttribute("message1");
								%>
									
										<div class="col-md-12" style="background:#052963;color: #fff;text-align: center;font-weight: bolder;height:44px;margin-top:8px;padding: 10px;">Expected Salary</div>
									
										<%if(message!=null){%>
										<%=message%>
										<%}else{} %>
										
										<br>
										<br>
										<br>
												
													<div class="col-md-3 col-xs-12 col-sm-12">
										           <label for="exampleInputEmail1">EXPECTED SALARY<font color="red">(In INR)</font></label>
										           </div>
										           
										           <div class="col-md-3 col-xs-12 col-sm-12" align="left">
													<div class="form-group">
										           
													<%if(driverSal!=null){ %>
													<input type="text" name="sal" value="<%=driverSal.getDEXPECTED_SAL() %>" class="form-control input-sm" required onkeypress="CheckNumeric(event)"/>
													<%}else{%>
													You are not entered Salary,if you want to add sal then please enter in add sal
													
													<%} %>
														</div>
												</div>
												
                                                   <div class="col-md-3 col-xs-12 col-sm-12" align="center">
															
															
															<div class="form-group"><input type="submit" value="Update" class="btn btn-primary"/></div>
															
															</div>
												<div class="col-md-3"></div>
								
									</form>
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