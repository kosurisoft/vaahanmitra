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
	import="com.vaahanmitra.model.*,com.vaahanmitra.service.*,java.util.*"%>
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
	
	function getBrands(str)
	{
		
	 if (str=="")  
	 {  
	  document.getElementById("brands").innerHTML="";  
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
	   document.getElementById("brands").innerHTML=xmlhttp.responseText;    
	   }  
	  }
	 xmlhttp.open("GET","./getVehicleBrands.jsp?vehicleType="+str,true);   
	 xmlhttp.send();    
	 } 
</script>
<style>
.app .content {
    padding: 91px 50px 100px 50px;
}
</style>
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
					<h3 style="">SPAREPARTS DASHBOARD</h3>
				</div>
				<div class="col-md-12">
					<div class="card"
						style="background: #fff; box-shadow: 0px 0px 2px 1px rgba(0, 0, 0, 0.15); border-bottom: 3px solid #a3b745; border-radius: 10px">
						<div class="card-block" style="border-bottom: 3px solid #a3b745;">
							<section class="example">
							<div class="table-responsive well">
								
									<div class="col-md-12" align="center" style="background-color: #523f6d; color: #fff; font-size: 21px; border-radius: 6px; ">
										<em>Add Serving Brand</em>
									</div>

									

									<div class="col-md-12">
										<br>
										<%try{
											if(request.getAttribute("message")!=null)
												{
												out.println(request.getAttribute("message"));
												}
										}catch(Exception e)
										{
											e.printStackTrace();
										}
												%>
									</div>
									<form action="./BoAddServingBrands" method="post">
									
									<div class="col-md-5">
								    <div class="form-group">
							        <label for="states">Vehicle Type :</label>
									<select name="vehicleType" class="form-control" onchange="getBrands(this.value)">
									<option value="">Vehicle Type</option>
									<option value="2">Two Wheeler</option>
									<!-- <option value="3">Three Wheeler</option> -->
									<option value="4">Four Wheeler</option>
									</select>
									</div>
									</div>
									
									<div class="col-md-5">
									<div class="form-group">
									<label>Brand Name</label>
									<input type="text" name="brandnames" id="brandnames" class="form-control" placeholder="Ex : HERO,HONDA,TVS" required/>	
									</div>
									</div>
									
									<div class="col-md-2">
									<div class="form-group">
									<label style="color:#fff;">Brahghjgk</label>
									<button style="background-color: #a3b745; border: 1px solid #a3b745; border-radius:5px" class="btn btn-primary btn-block">ADD</button>
									</div>
                                    </div>
                                    
                                    <div class="col-md-12">
									<div class="form-group">
                                    <div class="col-md-12" style="padding: 0 0;">
                                    <label for="states">Brand Name :</label>
                                    <div class="" id="brands">
                                    </div>
                                    </div>
                                    </div>
                                    </div>
                                    
									</form>
									</div>
								
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
	function enable_text(status)
	{
	var checkboxes = document.getElementsByName("choice");
	var checkboxesChecked = [];
	// loop over them all
	for (var i=0; i<checkboxes.length; i++) {
	   // And stick the checked ones onto an array...
	   if (checkboxes[i].checked) {
			   checkboxesChecked.push(checkboxes[i].value);
	   }
	}
	//alert(checkboxesChecked); 
	//Return the array if it is non-empty, or null
	//return checkboxesChecked.length > 0 ? checkboxesChecked : null;
	document.getElementById("brandnames").value=checkboxesChecked;
	documtnt.getElementById("checount").value=1;
	}
	</script>
	<script src="js/vendor.js"></script>
	<script src="js/app.js"></script>
</body>

</html>
