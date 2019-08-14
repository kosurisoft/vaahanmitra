<%
try {
    response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache");
    response.setDateHeader ("Expires", 0);
    
    //System.out.println(session.getAttribute("user"));
    
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
	import="com.vaahanmitra.model.*,com.vaahanmitra.service.*,java.util.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vaahanmitra | Admin</title>
<link href="assets/images/cg1.png" type="icon/img" rel="icon">
<jsp:include page="./AdminMenu.jsp" />
<jsp:include page="./Admin-right-side.jsp" />
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="description" content="Vaahanmitra, service center, used cars, mechanics">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="apple-touch-icon.png">
<!-- Place favicon.ico in the root directory -->
<link rel="stylesheet" href="css/vendor.css">

<!-- Theme initialization -->
<script>
            var themeSettings = (localStorage.getItem('themeSettings')) ? JSON.parse(localStorage.getItem('themeSettings')) :
            {};
            var themeName = themeSettings.themeName || '';
            if (themeName)
            {
                document.write('<link rel="stylesheet" id="theme-style" href="css/app-' + themeName + '.css">');
            }
            else
            {
                document.write('<link rel="stylesheet" id="theme-style" href="css/app.css">');
            }
        </script>
        <style>
        label{
            font-size:17px;
            font-weight: normal;
        }
       p{
       text-align: center;
       font-size: 28px;
       text-transform: uppercase;
       color: #523f6d;
       } 
        </style>
        
  
 <script>
var gRadioValue = ''; //global declared outside of function
function getRadioValue(str){
	alert("Mahesh"+str);
	var radioValArr = str.split('-');
	document.getElementById("sno").value=radioValArr[0].replace(/^\s*/, "").replace(/\s*$/, "");
	document.getElementById("vehicleType").value=radioValArr[1].replace(/^\s*/, "").replace(/\s*$/, "");
	document.getElementById("brandname").value=radioValArr[2].replace(/^\s*/, "").replace(/\s*$/, "");
    // or maybe: var whichRadio = document.getElementById(gWhichCheckedId);
    //do somethign with radioVal
}
</script>
</head>
<body>
	<div class="main-wrapper">
		<div class="app" id="app">
			<header class="header">
			<div class="header-block header-block-collapse hidden-lg-up">
				<button class="collapse-btn" id="sidebar-collapse-btn">
					<i class="fa fa-bars"></i>
					
			</header>
			<div class="sidebar-overlay" id="sidebar-overlay"></div>
			<article class="content responsive-tables-page" style="background-color:#fff"> 
			<section class="section">
			<div class="row">
				<div class="col-md-12">
					<div class="card"
						style="background: #fff; box-shadow: 0px 0px 2px 1px rgba(0, 0, 0, 0.15); border-bottom: 3px solid #a3b745;">
						<div class="card-block" style="border-bottom: 3px solid #a3b745;">
							<section class="example">
							<div class="table-responsive">
							<p>Update Brands</p>
							<form action="./UpdateBrand" method="post">
							<div class="col-md-12" style="padding:0 0px;">
							<div class="col-md-4">
							<input type="hidden" name="sno" id="sno">
							<input type="text" name="vehicleType" class="form-control" id="vehicleType">
							</div>
							<div class="col-md-4">
							<input type="text" name="brandname" class="form-control" id="brandname">
							</div>
							<div class="col-md-4">
							<input type="submit" name="submit" class="form-control" value="Update">
							</div>
							</div>
							</form>
								<div class="col-md-12" style="padding:0 0px;">
								
								<%try{	if(request.getAttribute("message")!=null){	out.println(request.getAttribute("message"));}}	catch(Exception e){} %>
								 <table border="1">
								 <tr>
								 <td></td>
								 <td>Vehicle Type</td>
								 <td>Brand Name</td>
								 </tr>
								 <%
								 ArrayList<Brand> al=new ArrayList<Brand>();
								 try
								 {
									 al=(ArrayList<Brand>)request.getAttribute("brands");
									 for(int i=0;i<al.size();i++)
									 {
										Brand b=new Brand();
										b=al.get(i);
										%>
										<tr>
										<td>
										<input type="radio" name="brandDets" value="<%=b.getSNO()%>-<%=b.getVEHICLE_TYPE() %>-<%=b.getBRAND_NAME()%>" onClick="getRadioValue(this.value)">
										</td>
								 <td><%=b.getVEHICLE_TYPE() %></td>
								 <td><%=b.getBRAND_NAME() %></td>
								 </tr>
									 <%}
								 }catch(Exception e)
								 {
									 
								 }
								 
								 %>
								 </table>
									 
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
	
	<script src="js/vendor.js"></script>
	<script src="js/app.js"></script>
</body>

</html>