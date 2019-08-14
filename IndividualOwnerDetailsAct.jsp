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
<%@ page language="java" import="java.util.*,com.vaahanmitra.model.*" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>vehicletracking</title>
<jsp:include page="./AdminMenu.jsp" />
<jsp:include page="./Admin-right-side.jsp" />
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Vaahanmitra</title>
<link href="assets/images/cg1.png" type="icon/img" rel="icon">
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
</head>

<body>
	<div class="main-wrapper">
		<div class="app" id="app">


			<header class="header">
			<div class="header-block header-block-collapse hidden-lg-up">
				<button class="collapse-btn" id="sidebar-collapse-btn">
					<i class="fa fa-bars"></i>
				</button>
			</div>

			<!-- <div class="header-block header-block-nav">
				<ul class="nav-profile"> <li class="profile dropdown">
				 <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"> 
				   <div class="img" style=""> </div> <span class="name"> Mohan Amasa</span> </a> 
				     <div class="dropdown-menu profile-dropdown-menu" aria-labelledby="dropdownMenu1"> 
				     <a class="dropdown-item" href="#"> <i class="fa fa-power-off icon"></i> Logout </a> 
				         </div> 
				             </li>
				               </ul>
			</div> -->
			</header>
			<div class="sidebar-overlay" id="sidebar-overlay"></div>
			<article class="content responsive-tables-page"
				style="background-color:#fff"> <section class="section">
			<div class="row">
				<div class="col-md-12">
					<div class="card"
						style="background: #fff; box-shadow: 0px 0px 2px 1px rgba(0, 0, 0, 0.15); border-bottom: 3px solid #a3b745;">
						<div class="card-block" style="border-bottom: 3px solid #a3b745;">
							<section class="example">
							<div class="table-responsive">
							<%
							ArrayList<IndividualOwnerRegister> al=new ArrayList<IndividualOwnerRegister>();
							al=(ArrayList<IndividualOwnerRegister>)request.getAttribute("individualOwnerDetails");
							Iterator itr= al.iterator();
							%>
							<div class="col-md-12" >
							<section class="col-md-12"
								 style="font-size: 16px; text-align:center;"><strong><u><i>Individual Owner Details</i></u></strong></section>
						</div>
						<div class="col-md-12" >
							<section class="col-md-12" style="font-size: 16px; text-align:center;">
							<%try{if(request.getAttribute("returnstring")!=null){out.println(request.getAttribute("returnstring"));}}catch(Exception e){} %>
							</section>
							
						</div>
							<div class="col-md-12"
							style="font-family: 'Roboto', sans-serif; background-color: #fff;">
							<section class="col-md-3"
								 style="padding:3px -1px;font-size: 14px;text-align:center;"><strong>NAME</strong></section>
							<section class="col-md-2"
								 style="padding:3px 0px;font-size: 14px;text-align:center;"><strong>MOBILE</strong></section>
							<section class="col-md-2"
								 style="padding:3px 0px;font-size: 14px;text-align:center;"><strong>ADDRESS</strong></section>
							<section class="col-md-2"  style="padding:3px 0px;font-size: 14px;text-align:center;"><strong>VEHICLE</strong>
							</section>
							<section class="col-md-3"  style="padding:3px 0px;font-size: 14px;text-align:center;"><strong>STATUS</strong>
							</section>
						</div>
						<%
						while(itr.hasNext()){
							IndividualOwnerRegister bo=(IndividualOwnerRegister)itr.next();
						%>
						<div class="col-md-12"
							style="font-family: 'Roboto', sans-serif; background-color: #fff; border-radius: 4px; margin-bottom: 7px; position: relative; right: 20px;">
							<section class="col-md-3"
								 style="padding:3px -1px;font-size: 14px;"><%=bo.getNAME()%></section>
							<section class="col-md-2"
								 style="padding:3px 0px;font-size: 14px;text-align:center;"><%=bo.getMOBILE_NO()%></section>
							<section class="col-md-2"
								 style="padding:3px 0px;font-size: 14px;"><%=bo.getCITY()%><br><%=bo.getPINCODE_NO() %></section>
							<section class="col-md-2"  
								 style="padding:3px 0px;font-size: 14px;text-align:center;"><%=bo.getVEHICAL_TYPE() %>
							</section>
							<section class="col-md-3"  style="padding:3px 0px;font-size: 14px;text-align:center;">
							<form action="./GetIndividualOwnerActina" method="post">
							<input type="hidden" name="sequenceid" value="<%=bo.getSEQUENTIAL_NO()%>">
							<input type="hidden" name="k" value="<%=request.getParameter("k")%>">
							<input type="hidden" name="page" value="<%=request.getAttribute("currentPage")%>">
							<%if(bo.getSTATUS().equals("ACTIVE"))
								{%>
								<input type="submit" name="status" value="IN-ACTIVATE" class="btn-primary btn-sm">
								<%}else
								{%>
								<input type="submit" name="status" value="ACTIVATE" class="btn-primary btn-sm">
								<%} %>
								<%if(bo.getVERIFIED().equals("YES"))
								{%>
								VERIFIED
								<%}else
								{%>
								<input type="submit" name="status" value="VERIFIED" class="btn-primary btn-sm"/>
								<%} %>
								</form>
							</section>
						</div>
						<%} %>
						<div>Pages <c:forEach begin="1" end="${numofpages}" var="i">
				<td><a href="./GetBusinessOwners?k=ServiceMechanic&page=${i}">${i}</a></td>
			</c:forEach></div>
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