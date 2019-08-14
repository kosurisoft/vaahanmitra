<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<script src="./css/countries.js" type="text/javascript"></script>
<script src="./css/carmodels1.js" type="text/javascript"></script>
<jsp:include page="./AdminMenu.jsp" />
<jsp:include page="./topMenu.jsp"></jsp:include>
<title>Vaahanmitra</title>
<link href="assets/images/cg1.png" type="icon/img" rel="icon">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="apple-touch-icon.png">
<!-- Place favicon.ico in the root directory -->
<link rel="stylesheet" href="css/vendor.css">
<!-- Theme initialization -->
<style>
.app .content {
    padding: 91px 50px 100px 50px;
}
.form-control {
    display: block;
    width: 100%;
    padding: .345rem .75rem;
    font-size: 1rem;
    line-height: 1.1;
    color: #55595c;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: .25rem;
}
label {
    display: inline-block;
    margin-bottom: .3rem;
    font-size: 15px;
    font-weight: normal !important;
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
				<%
				try{if(request.getAttribute("existemail")!=null){out.println(request.getAttribute("existemail"));}}catch(Exception e){}
				%>
				</div>
				<div class="col-md-12">
					<div class="card"
						style="background: #fff; box-shadow: 0px 0px 2px 1px rgba(0, 0, 0, 0.15); border-bottom: 3px solid #a3b745; border-radius: 10px">
						<div class="card-block" style="border-bottom: 3px solid #a3b745;">
							<section class="example">
							<div class="table-responsive well">
								
									<div class="col-md-12" align="center" style="background-color: #523f6d; color: #fff; font-size: 21px; border-radius: 6px; ">
										<em>Vendor Register</em>
									</div>
									<form action="./VendorRegister" method="post">
									<p><br></p>
									<div class="col-md-4">
									<div class="form-group">
									<label>VENDOR NAME :</label>
									<input type="text" name="vendorname" id="vendorname" class="form-control" placeholder="VENDOR_NAME" required/>	
									</div>
									</div>
									
									<div class="col-md-4">
									<div class="form-group">
									<label>BUSINESS TYPE<span style="color: red">*</span></label>
                                    <select class="form-control"  id="businesstype" name="businesstype" required>
                                            <option value="M">MANUFACTURER</option>
                                            <option value="D">DISTRIBUTOR</option>                                     
                                    </select> 	
									</div>
									</div>
									
									<div class="col-md-4">
									<div class="form-group">
									<label>GSTIN UIN :</label>
									<input type="text" name="gstin" id="gstin" class="form-control" placeholder="GSTIN_UIN" required/>	
									</div>
									</div>
									
									<div class="col-md-4">
									<div class="form-group">
									<label>ADDRESS :</label>
									<textarea name="address" id="address" class="form-control" rows="3" cols="21">
									</textarea>	
									</div>
									</div>
									
									<div class="col-md-4">
									<div class="form-group">
									<label>CITY :</label>
									<input type="text" name="city" id="city" class="form-control" placeholder="CITY" required/>	
									</div>
									</div>
									
									<div class="col-md-4">
									<div class="form-group">
									<label>STATE<span style="color: red">*</span></label>
                                    <select class="form-control"  id="country" name="state" required>
                                            <option value="">Select State</option>                                     
                                    </select> 	
									</div>
									</div>
									
									<div class="col-md-4">
									<div class="form-group">
									<label for="email">DISTRICT<span style="color: red">*</span></label>
                                 	<select class="form-control" id="state" name="district" required>
                                        <option value="">Select District</option>                                                          
                                    </select> 	
									</div>
									</div>
									
								    <div class="col-md-4">
									<div class="form-group">
									<label>EMAIL ID :</label>
									<input type="text" name="emailid" id="emailid" class="form-control" placeholder="EMAIL_ID" required/>	
									</div>
									</div>
									
									
								    <div class="col-md-4">
									<div class="form-group">
									<label>PHONE NO1 :</label>
									<input type="text" name="phoneno1" id="phoneno1" class="form-control" placeholder="PHONE_NO1" required/>	
									</div>
									</div>
									
									
								    <div class="col-md-4">
									<div class="form-group">
									<label>PHONE NO2 :</label>
									<input type="text" name="phoneno2" id="phoneno2" class="form-control" placeholder="PHONE_NO2" required/>	
									</div>
									</div>
									
									<div class="row">
									 <div class="col-md-5"></div>
									 
									<div class="col-md-2">
									<div class="form-group">
									<button style="background-color: #a3b745; border: 1px solid #a3b745; border-radius:5px" class="btn btn-primary btn-block">REGISTER</button>
									</div>
                                    </div>
                                    
                                    <div class="col-md-5"></div>
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
	<script language="javascript">
			populateCountries("country", "state");
		</script>
	<script src="js/vendor.js"></script>
	<script src="js/app.js"></script>
</body>

</html>
