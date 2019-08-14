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
<%@page
	import="com.vaahanmitra.model.*,com.vaahanmitra.service.*,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<script src="./css/carmodels1.js" type="text/javascript"></script>
<%
String userid="";
BusinessOwnerRegister bo =new BusinessOwnerRegister();
try
{
	if(session.getAttribute("user")!=null)
	{
		userid=session.getAttribute("user").toString();
	}
	bo =new BusinessOwnerService().getProfileDetails(userid);
	System.out.println("User Type : "+bo.getUSER_TYPE());
}catch(Exception e)
{
	
}
if(bo.getUSER_TYPE().equalsIgnoreCase("UD"))
{%>
	<jsp:include page="./carsandBikes.jsp" /> 
<%}else if(bo.getUSER_TYPE().equalsIgnoreCase("SC"))
{%>
<jsp:include page="./carMenu.jsp"></jsp:include>
<%}else if(bo.getUSER_TYPE().equalsIgnoreCase("SP"))
{%>
<jsp:include page="./sparePartsMenu.jsp" />
<%}else if(bo.getUSER_TYPE().equalsIgnoreCase("IO"))
{%>
<jsp:include page="./individualOwner.jsp"/>
<%}else if(bo.getUSER_TYPE().equalsIgnoreCase("IO"))
{%>
<jsp:include page="./individualOwner.jsp"/>
<%}%>

<jsp:include page="./topMenu.jsp"></jsp:include>
<title>Vaahanmitra</title>
<link href="assets/images/cg1.png" type="icon/img" rel="icon">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="apple-touch-icon.png">
<!-- Place favicon.ico in the root directory -->
<link rel="stylesheet" href="css/vendor.css">
<!-- Theme initialization -->
</head>
<body>
	<div class="main-wrapper">
		<div class="app" id="app">
			<header class="" style="font-family: 'Oswald', sans-serif;">
			<div class="header-block header-block-nav"></div>
			</header>
			<article class="content responsive-tables-page" style="background-color:#fff"> <section class="section">
			<div class="row">
				
		    <!-- <div class="col-md-12 col-sm-12 col-xs-12">
			<div align="center">
			<h3>SPARE PARTS DASHBOARD</h3>
			</div>
		    </div> -->

		    <div class="col-md-12 col-xs-12 col-sm-12">
			<div class="card" style="background: #fff; box-shadow: 0px 0px 2px 1px rgba(0, 0, 0, 0.15); border-bottom: 3px solid #a3b745;">
			<div class="card-block">
			<div class="example">
			
	<!--================= New section ================-->
	     <div class="col-md-12">
	       <p><%
	       ArrayList<SpareParts> al=new ArrayList<SpareParts>();
	       try
	       {
	       if(request.getAttribute("message")!=null)
	       {
	    	   out.println(request.getAttribute("message"));
	       }
	       al=(ArrayList<SpareParts>)request.getAttribute("sparesList");
	       %>
	       <!--================= table section ================-->			
		<table class="table table-bordered">
        <thead>        
        <tr>
        <th>VEHICLE BRAND</th>
        <th>COMPANY NAME</th>
        <th>PART NO.</th>
        <th>PRICE</th>
        <th>DISCOUNT</th>
        <th>VEHICLETYPE</th>
        </tr>
        </thead>
        <%
        if(al.size()<=0)
        {%>
        	<tr>
        	<td colspan="3">No Records Updated</td>
        </tr>
        <%}
        else
        {
        	for(int i=0;i<al.size();i++)
        	{
        		SpareParts sp=new SpareParts();
        		sp = al.get(i);
        		%>
        <tr>
        <td><%=sp.getVEHICLE_BRAND() %></td>
        <td><%=sp.getMANUFACTURE_COMPANY_NAME() %></td>
        <td><%=sp.getPARTNO() %></td>
        <td><%=sp.getPRICE() %></td>
        <td><%=sp.getDISCOUNT() %></td>
        <td><%if(sp.getVEHICLE_TYPE().equals("2,"))
                                 {out.println("2 Wheeler");}
                                 else
                                	 if(sp.getVEHICLE_TYPE().equals("4,"))
                                     {out.println("4 Wheeler");}
                                     else	 
                                     {out.println("2 & 4 Wheeler");}%></td>
        </tr>
        
        	<%}
        }
        %>
       
        </table>
	<!--================= table section ================-->	
	       <%
	       }
	       catch(Exception e)
	       {
	    	   e.printStackTrace();
	       }
	       %></p>
	     </div>
	   
	<!--================= end new section ================-->
			
			
				
							
			</div>
			</div>
		    </div>
		    </div>
			
			</div>
			</section> 
			</article>
			
    <!--============== footer section =================== -->			
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
  
     <!--============== end footer section =================== -->
			

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