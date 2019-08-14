<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.vaahanmitra.model.*,com.vaahanmitra.daoImpl.*,com.vaahanmitra.dao.*,com.vaahanmitra.service.*,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.text.SimpleDateFormat,java.io.*" %>  
<html>
<head>
<meta charset="utf-8">
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
<!--  <link href="assets/css/modalForm.css" rel="stylesheet" type="text/css"/> -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
.modal-backdrop {background: none;}
@media (min-width: 1200px){
.container {
    width: 100px;
}
}
/* .modal {
   position:fixed;
   top:0;
   right:0;
   left:auto;
   bottom:0;
} */
</style>

<style>
.td {
	font-size: small;
}
</style>
<script type="text/javascript">
function DisableNextButton(btnId) {
	btnId.disabled = 'true';
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
	   
</style>


	<script>
	 function printPageArea(areaID){
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
			<article class="content responsive-tables-page"
				style="background-color:#fff"> <section class="section">
			<div class="row">
				<center>
					<h3 style="">SERVICE CENTER DASHBOARD</h3>
				</center>
				
	<%
    int page1=0,noofrecords=0,maxrowsperpage=0;
    try{
    	page1=Integer.parseInt(request.getAttribute("currentPage").toString());
    	maxrowsperpage=Integer.parseInt(request.getAttribute("maxrowsperpage").toString());
    }
    catch(Exception e)
    {
    
    }
    int k=(maxrowsperpage*page1)-maxrowsperpage;
    
    %>
				
				<div class="col-md-12">
 					<div class="card" id="individual1">
					<div class="card-block">
							<section class="example"">
								<div class="">
								<form action="./SearchDSBServiceAppt" method="post">

										<div class="col-md-12" id="one1">
										SEARCH APPOINTMENT</div>
										
										<%
										ArrayList<ServiceEndUser> endUserDetails=(ArrayList<ServiceEndUser>)request.getAttribute("endUserDetails"); 
										
										String date1=(String)request.getAttribute("fdate");
										String date2=(String)request.getAttribute("sdate");
										String message=(String)request.getAttribute("message");
										
										%>
										<div class="col-md-12 col-xs-12 col-sm-12">
										<br>
										           </div>
										           
										    <div class="row">    
											<div class="col-sm-4">
											<label style="float: left;">From Date :</label>
											<input type="date" name="fdate" class="form-control " placeholder="Enter From DATE" style="line-height:24px;"></input>
											</div>
											
											<div class="col-sm-4">
											<label style="float: left;">To Date :</label>
											<input type="date" name="sdate" class="form-control " placeholder="Enter To DATE" style="line-height:24px;"></input>
											</div>
										
											<div class="col-sm-2">
											<label style="float: left; color:#fff;">ggb</label>
											<button type="submit" class="btn btn-info btn-block" style="border: 1px; border-radius: 4px;">SEARCH</button>	
											</div>					
										    </div>
										
											</form>
											</section>
											</div>
											</div>	
											
											<section class="example" style="margin-top:20px;" id="individual1">
											 <div style="overflow-x:auto;">
											 <%if(message!=null){ %>
											 <font color="red" size="3"><%=message %></font>
											 <%} %>
											 
											 
											 <div id="printableArea">
											 
											<table class="table table-striped table-bordered table-hover" style="border: 1px solid #ccc;">	
											
											<tr>
											<td><b>NAME</b></td>
											<td><b>EMAIL</b></td>
											<td><b>MOBILE NO</b></td>
											<td><b>APPOINTMENT DATE</b></td>
											<td><b>CONFIRM DATE</b></td>
											<td><b>VEHICLE TYPE</b></td>
											<td><b>VEHICLE BRAND</b></td>
											<td><b>VEHICLE NO.</b></td>
											<td><b>APPOINTMENT ID</b></td>
											<td><b>Confirm</b></td>
											<td><b>Change Appointment Date</b></td>
											</tr>
											<%if(endUserDetails!=null && endUserDetails.size()<=0){ %>
											<tr>
											<td colspan="11"><font color="red">DATA NOT FOUND.......</font></td>
											</tr>
											<%}else{ }%>
											
											<% int i=1; %>
											<c:forEach var="endUserDetails" items="${endUserDetails}">
											
											<tr>
											<td><c:out value="${endUserDetails.NAME}"></c:out></td>
											<td><c:out value="${endUserDetails.EMAIL}"></c:out></td>
											<td><c:out value="${endUserDetails.MOBILE_NO}"></c:out></td>
											<td><c:out value="${endUserDetails.APPOINTMENT_DATE}"></c:out></td>
											<td><c:out value="${endUserDetails.CONFIRM_DATE}"></c:out></td>
											<td><c:out value="${(endUserDetails.VEHICLE_TYPE=='2,')?'TWO WHEELER':(endUserDetails.VEHICLE_TYPE=='4,')?'FOUR WHEELER':'N/A'}"></c:out></td>
											<td><c:out value="${endUserDetails.VEHICLE_BRAND}"></c:out></td>
											<td><c:out value="${endUserDetails.CAR_NO}"></c:out></td>
											<td><c:out value="${endUserDetails.APPOINTMENT_ID}"></c:out></td>
											<form action="./ChangeServiceApptDateAndConfirmRequest" method="post">
											<input type="hidden" name="fdate" value="<%=date1 %>"/>
											<input type="hidden" name="sdate" value="<%=date2 %>"/>
											<input type="hidden" name="apptId" value="${endUserDetails.APPOINTMENT_ID}"/>
											<input type="hidden" name="email" value="${endUserDetails.EMAIL}"/>
											<input type="hidden" name="cnfmDate" value="${endUserDetails.CONFIRM_DATE}"/>
											<input type="hidden" name="page" value="<%=page1 %>"/>
<%-- 											<td><button type="submit" class="btn btn-primary" style="background-color: #a3b745;"/><c:out value="${(endUserDetails.STATUS=='INACTIVE')?'Confirmed':'Confirm'}"></c:out></button></td> --%>

											<c:choose>
											<c:when test="${endUserDetails.STATUS=='Confirm'}">
											<td><button type="submit" class="btn btn-primary" style="background-color: #a3b745;width:100%;"/><c:out value="${endUserDetails.STATUS}"></c:out></button></td>
											</c:when>
											<c:otherwise>
											<td><button type="submit" class="btn btn-primary" style="background-color: #a3b745;width:100%;" disabled/><c:out value="${endUserDetails.STATUS}"></c:out></button></td>
											</c:otherwise>
											</c:choose>
											</form>
											<td>
<!-- 											<input type="submit" value="Change Appt Date" class="btn btn-primary" style="background-color: #a3b745; border: 1px solid #a3b745;"/> -->
											
 <div class="container" style="margin-right: 100px;">
  <!-- Trigger the modal with a button -->
  
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal<%=i %>" style="background-color: #a3b745;padding-top: 5px;padding-bottom: 5px;font-size: 14px;">Change Appt Date</button>
   <%  Date dNow = new Date( );
        SimpleDateFormat ft = 
        new SimpleDateFormat ("yyyy-MM-dd");
     %>
  <!-- Modal -->
  <div class="modal fade" id="myModal<%=i %>" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Change Appointment Date</h4>
        </div>
        <div class="modal-body">
        <form action="./ChangeServiceApptDateAndConfirmRequest" method="post">
		<input type="hidden" name="apptId" value="${endUserDetails.APPOINTMENT_ID}"/>
        <input type="hidden" name="fdate" value="<%=date1 %>"/>
		<input type="hidden" name="sdate" value="<%=date2 %>"/>
		<input type="hidden" name="email" value="${endUserDetails.EMAIL}"/>
		<input type="hidden" name="page" value="<%=page1 %>"/>
		<c:out value="${endUserDetails.APPOINTMENT_ID}"></c:out>
          <div style="padding-top: 10px;"><input type="date" name="mdate" min="<%=ft.format(dNow)%>" value=""   onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Select date';}" required/></div>
          <div style="padding-top: 10px;"><input type="submit" value="submit" style="background-color: #a3b745; border: 1px solid #a3b745;"/></div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
</div>

<%-- 
  <div class="w3-container">
 <button onclick="document.getElementById('idr<%=i%>').style.display='block'" class="w3-button w3-green w3-large">Change Appt Date</button>

  <div id="idr<%=i %>" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:260px">

      <div class="w3-center"><br>
        <span onclick="document.getElementById('idr<%=i%>').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
      </div>
    	<form action="./ChangeServiceApptDateAndConfirmRequest" method="post">
      	<input type="hidden" name="apptId" value="${endUserDetails.APPOINTMENT_ID}"/>
        <input type="hidden" name="fdate" value="<%=date1 %>"/>
		<input type="hidden" name="sdate" value="<%=date2 %>"/>
        <div class="w3-section">
		<c:out value="${endUserDetails.APPOINTMENT_ID}"></c:out>
          <label><b>DATE</b></label>
          <input type="date" name="mdate" class="w3-input w3-border" type="text" placeholder="Appointment Id"/>
          
          <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">Submit</button>
<!--           <input class="w3-check w3-margin-top" type="checkbox" checked="checked"> Remember me -->
        </div>
      </form>

      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
        <button onclick="document.getElementById('idr<%=i %>').style.display='none'" type="button" class="w3-button w3-red">Cancel</button>
<!--         <span class="w3-right w3-padding w3-hide-small">Forgot <a href="#">password?</a></span> -->
      </div>
    </div>
  </div>
</div>
 --%>
											
											</td>
											</tr>
											<%i++; %>
											</c:forEach>
											
											
															<tr>
											
													<td colspan="11" align="left">
											Pages:&nbsp;
											
											
						                 	<c:forEach begin="1" end="${noOfPages}" var="k">
										
						<%-- 				<td style="float: left" ><a href="./SearchHDriver?page=${k}&state=<%=state%>&dist=<%=dist%>&permitType=<%=permitType%>&range=<%=range%>&licenseType=<%=licenseType%>">${k}&nbsp;&nbsp; </a></td> --%>
									
												<c:set var="currentPage" value="${currentPage}"></c:set>
						             			<c:set var="noOfPages" value="${k}"></c:set>
						             			<%
						             			Integer currentPage1=(Integer)pageContext.getAttribute("currentPage");
						             			Integer noOfPages=(Integer)pageContext.getAttribute("noOfPages");
						             			
						             			if(currentPage1.equals(noOfPages)){
						             			%>
												<a href="./SearchDSBServiceAppt?page=${k}&fdate=<%=date1%>&sdate=<%=date2%>" style="color:#fc6116;"><u>${k}&nbsp;</u></a>             			
												<%} else{%>
												             			
												<a href="./SearchDSBServiceAppt?page=${k}&fdate=<%=date1%>&sdate=<%=date2%>">${k}&nbsp;</a> 				
												<%} %>
									
									</c:forEach>
									</td>
										</tr>
											
											<tr>
											
											<td colspan="11" align="right">
 											<a href="javascript:void(0);" class="btn btn-primary" onclick="printPageArea('printableArea')"> Print</a>
<!--  														<button type="submit" value="Submit" onclick="document.getElementById('finRot').checked=!document.getElementById('finRot').checked;" class="btn btn-primary">Submit</button> -->
											</td>
											
											</tr>
											
											
											</table>
											
											</div>
											
											</div>
										</tbody>
									
							
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