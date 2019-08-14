<%@ page language="java" import="com.vaahanmitra.model.*,java.util.*,com.vaahanmitra.service.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Vaahanmitra | Search Distributor</title>
<link href="assets/images/cg1.png" type="icon/img" rel="icon">
<!-- Base Css -->
<link href="assets/css/base.css" rel="stylesheet" type="text/css" />
<link href="assets/css/kosuri.css" rel="stylesheet" type="text/css" />
<link href="assets/css/modalForm.css" rel="stylesheet" type="text/css" />
<!--  <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"> -->
  <link rel="stylesheet" href="assets/css/jquery.scrolling-tabs.css">
  <link rel="stylesheet" href="assets/css/st-demo.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script>
	function getVehicleVariant(str) {
		
		var vbrand = document.getElementById("vehicleBrand").value;
		var vmodel = document.getElementById("vehicleModel").value;
		var vType = document.getElementById("vType").value;
		
		if (str == "") {
			document.getElementById("txtHintV").innerHTML = "";
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
				document.getElementById("txtHintV").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "./getVariantbyBrandModel.jsp?vbrand="+vbrand+ "&vmodel="+vmodel+"&vType="+vType, true);
		xmlhttp.send();
	}
	
	function getSPBrand(str)
	{
	 if (str=="")  
	 {  
	  document.getElementById("SPBrand").innerHTML="";  
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
	   document.getElementById("SPBrand").innerHTML=xmlhttp.responseText;    
	   }  
	  }
	 xmlhttp.open("GET","./vehicleSpBrand.jsp?spBrand="+str,true);   
	 xmlhttp.send();    
	 }
	function getSparesManufacturers(str)
	{
	 if (str=="")  
	 { 
	  document.getElementById("Manufacturers").innerHTML="";  
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
	   document.getElementById("Manufacturers").innerHTML=xmlhttp.responseText;    
	   }  
	  }
	 xmlhttp.open("GET","./getSparesManufacturers.jsp?vehicleType="+str,true);   
	 xmlhttp.send();    
	 }
</script>

<script type="text/javascript">
window.toggleChevron = function(button) {
    $(button).find('span').toggleClass('glyphicon glyphicon-plus glyphicon glyphicon-minus ');
}
</script>

<style>
.scrtabs-tabs-fixed-container {
    float: left;
    height: 27px !important;
    overflow: hidden;
    width: 100%;
}
.scrtabs-tab-container {
    height: 28px;
}
.re{
    color: #000;
    font-size:19px;
    margin-bottom: 5px;
    margin-top: 0px;
    }
    .re0{
    padding:0 0px;
    }
    #re1{
        border: 1px solid #ddd;
        border-radius: 3px;
    }
    .side h6{
    font-size: 23px;
    background: #9a2220;
    border: 1px solid #9a2220;
    color: #fff;
    text-align: center;
    margin: 13px 10px;
    border-radius: 3px;
    line-height: 31px;
    font-family: sans-serif;
    }
    .left{
        /* border: 1px solid #ddd;
        border-radius: 3px;
        margin-bottom: 3px;
        padding:0 0px; */
        border-radius: 3px;
	    margin-bottom: 9px;
	    padding: 4px 0px;
	    border-top: 1px solid #DDD;
	    border-bottom: 1px solid #DDD;
    }
    .left p{
        margin: 4px 13px;
       /*  line-height:16px; */
    }
    .re2{
    font-size: 16px;
    color: #000;
    margin: 15px 14px;
    }
    .re3{
        font-family: inherit;
    font-size:17px;
    color: #4491d4;
    margin: 10px 0;
    font-weight: 600;
    padding: 2px 0px;
    }
    .re4{
    font-size:15px !important;
    }
     @media  (max-width:768px){
    .re5{
    padding: 0 0 !important;
    margin: 10px 0 !important;
    }
    }
     .navbar {
    position: relative;
    min-height: 50px;
    margin-bottom: 0px !omportant;
    border: 1px solid transparent;
}
.re8{
padding: 0 0;
}
.left10{
    font-size:22px !important;
    color: #337ab7;
    padding: 0px 0;
    margin:8px 12px !important;
    font-weight: bold;
    }
    .left10 span{
    font-size:16px !important;
    color: rgba(0,0,0,.7);
    padding: 0px 0;
    margin:14px 0px !important;
    }
    #left2{
    font-size: 17px;
    text-decoration: none;
    }
    .left0 span{
        color: #000;
        font-size: 15px;
        line-height:20px;
      }
      .left0{
        color: #000;
        font-size: 16px;
        line-height: 21px;
      }
    .left3{
              font-size: 14px!important;
              font-weight: 600;
              color: #9a2220;
    }
    .left3 span{
        font-size:14px;
        color: #000;
        font-weight: normal;
     }
    .left4{
        font-size: 15px !important;
        color: #555 !important;
         margin:5px 13px !important;
         line-height: initial;
    }
    .left5{
        font-size: 15px !important;
        margin:4px 12px !important;
      line-height: initial;
       color: #555 !important;
    }
    .pagination > li > a {
    margin-left: 5px;
    background-color: transparent;
    border: 0;
    font-weight: 700;
    border-radius: 4px;
    font-weight: 500;
    padding: 5px 13px;
    margin: 0px 0;
    line-height: 24px;
    border-left: 1px solid #337ab7;
    border-radius: 0px;
}

.left {
    border-radius: 3px;
    margin-bottom:4px;
     border: 1px solid #ccc;
}
.left:hover{
    border-radius: 3px;
    margin-bottom:4px;
     border: 1px solid #ccc;
    box-shadow: 0 0 9px #ccc;
}

.sticky + .content {
    padding-top: 73px !important;
}
.left7{
    text-align: center;
}
.left7 a{
    text-align: center;
    padding: 11px;
    margin: 0px 0px;
}
.left01{
     margin: 4px 9px !important;
    font-size:18px !important;
    color: #9a2220;
    margin-bottom: 0px !important;
    }
 .left01 span {
    color: #000;
    font-size: 18px;
    line-height: 28px;
    }
.left7 a img{
    text-align: center;
    padding: 11px;
    margin: 0px 0px;
}
.left12 a{
    font-size: 17px;
    color: #58a0de;
    }
</style>
</head>
<body>
	<div class="se-pre-con"></div>
	    <div id="page-content">
		<jsp:include page="./homeTop.jsp"></jsp:include>
        
        <div class="container">
        <!--======== new search ========== -->
        <%
        String username = null;
        String vType="",manufacturer="",state="",category="";
        int numofpages=0,noofrecords=0,currentPage=0;
        ArrayList<BusinessOwnerRegister> al=new ArrayList<BusinessOwnerRegister>();
        try
        {
        	al=(ArrayList<BusinessOwnerRegister>)request.getAttribute("businessOwnerDetails");
        	if(session.getAttribute("user")!=null)
        	{
        		username=session.getAttribute("user").toString();
        	}
        	if(request.getParameter("vechicleT")!=null)
			{
        		vType=request.getParameter("vechicleT");
			}
			if(request.getParameter("manufacturer")!=null)
			{
				manufacturer=request.getParameter("manufacturer");
			}
			if(request.getParameter("VeState")!=null)
			{
				state=request.getParameter("VeState");
			}
			if(request.getParameter("Vcategory")!=null)
			{
				category=request.getParameter("Vcategory");
			}
        	numofpages=Integer.parseInt(request.getAttribute("numofpages").toString());
        	noofrecords=Integer.parseInt(request.getAttribute("noofrecords").toString());
        	currentPage=Integer.parseInt(request.getAttribute("currentPage").toString());
        }catch(Exception e)
        {
        	e.printStackTrace();
        }
        
        %>
                 <h5 class="re">&nbsp; Spareparts Search By Distributor</h5>
                     <form action="./SearchDistributor" method="post">
                      <div class="col-md-10 re0">
                                 <div class="col-md-3">
                                 <div class="form-group">
							     <label for="states">Vehicle Type :</label>
						     	 <select id="vechicleT" class="form-control" name="vechicleT"  onchange="getSparesManufacturers(this.value)">  <!-- onchange="getSPBrand(this.value)" -->
						     	 <option>Vehicle Type</option>
						     	 <%
						     	 if(vType.equalsIgnoreCase("2,"))
						     	 {%>
								 <option value="2," selected="selected">Two Wheeler</option>
								 <option value="4,">Four Wheeler</option>
								 <%}
						     	 else
						     		if(vType.equalsIgnoreCase("4,"))
							     	 {%>
									 <option value="2,">Two Wheeler</option>
									 <option value="4," selected="selected">Four Wheeler</option>
									 <% }
							     	 else
							     	 {
						     	 %>
								 <option value="2,">Two Wheeler</option>
								 <option value="4,">Four Wheeler</option>
								 <%} %>
							     </select>
                                 </div>
                                 </div> 
                                 
                                 <div class="col-md-3">
                                 <div class="form-group">
							     <label for="states">Manufacturer :</label>
							     
							     <div id="manufacturer">
						     	 <jsp:include page="./getSparesManufacturers.jsp">
						     	 <jsp:param value="<%=vType %>" name="vehicleType"/>
						     	 	<jsp:param value="<%=manufacturer %>" name="manufacturer"/>
						     	 </jsp:include>
                                 </div>
                                 </div>
                                 </div> 
                                 
                                 <div class="col-md-3">
                                 <div class="form-group">
							     <label for="states">State :</label>
						     	 <select class="form-control" name="VeState" id="State">
													 <option>Select State</option>
													 <%
													 ArrayList<String> stal=new BusinessOwnerService().getSPState();
													 for(int i=0;i<stal.size();i++)
													 {
														 if(stal.get(i).equalsIgnoreCase(state))
														 {%>
													     <option selected="selected"><%=stal.get(i)%></option>
												     <%}
														 else
														 {
													 %>
													     <option><%=stal.get(i)%></option>
												     <%}} %>
													 </select>
                                 </div>
                                 </div>  
                                 
                                 <div class="col-md-3">
                                 <div class="form-group">
							     <label for="states">Category :</label>
							      <select class="form-control" name="Vcategory" id="category">
													 <option>Select Category</option>
												     <%
													 ArrayList<Category> cat=new GetSparePartsDetails().getCategories();
													 for(int i=0;i<cat.size();i++)
													 {
														 Category ca=cat.get(i);
														 if(ca.getCATEGORY().equalsIgnoreCase(category))
														 {%>
													     <option selected="selected"><%=ca.getCATEGORY()%></option>
												     <%}
														 else
														 {
													 %>
													     <option><%=ca.getCATEGORY()%></option>
												     <%} }%>
													 </select>
                                 </div>
                                 </div>   
                                 </div>
         
                                 <div class="col-md-2">
                                 <div class="col-md-12" style="margin-top:3px;">
                                 <div class="form-group">
							     <label for="states" style="color:#fff;"></label>
						     	 <button type="submit" class="btn btn-danger btn-block">Search</button>
                                 </div>
                                 </div> 
                                 </div>
                    </form>             
                      </div>
                      <div class="clearfix"></div>
                      <!--======== end new search ========== -->
                      
                       <!--======== new search ========== -->
                      <div class="col-md-12">
                      
                      <div class="container">
                      <div class="col-md-12 re5">
                      <h1 class="re3">List Of Distributor</h1>
                    <%
                      if(al.size()<=0)
                      {
                    	 %>
                    	<div class="col-md-12 re8">
                        <div class="left">
                        <p class="re4">No Data Found.....</p>
                        </div>                         
                        </div> 
                      <%}
                      else
                      { 
                      for(int i=0;i<al.size();i++)
                      {
                    	  BusinessOwnerRegister bo=al.get(i);
                      %>

                  	<div class="col-md-12 re8">
                        <div class="left">
                        <div class="row">
                        <div class="col-md-10">
                        <div class="row">
                         <div class="col-md-12"> 
                          <p class="left10"><%=bo.getBUSINESS_NAME() %>, <span><%=bo.getB_CITY() %></span></p> 
                         </div>
                         </div>
                         
                        <div class="row">
                          <div class="col-md-4">
                           <!-- <p class="left3">ADDRESS :</p> -->   
                           <p class="left0"><span><%=bo.getADDRESS() %>,<br>
                             <%=bo.getCITY() %>,<br>
                              <%=bo.getDISTRICT() %>,<br>
                              <%=bo.getPINCODE_NO()%></span></p>
                          </div>
                          
                          <div class="col-md-5">
                           <p class="left3">EMAIL_ID : <span class="left0"><%=bo.getEMAIL_ID() %></span></p>
                           <p class="left3">MOBILE_NO : <span class="left0"><%=bo.getMOBILE_NO()%></span></p>
                           <p class="left3">OFFICE_PHONE_NO : <span class="left0"><%=bo.getOFFICE_PHONE_NO()%></span></p>
                          </div>
                          
                          <div class="col-md-3">
                          <p><br> <br><p>
                            <p class="left12">
                             <form action="./GetDistributorSpares" method="post">
        				  <input type="hidden" name="page" value="<%=currentPage%>">
        				  <input type="hidden" name="vechicleT" value="<%=vType%>">
        				  <input type="hidden" name="manufacturer" value="<%=manufacturer%>">
        				  <input type="hidden" name="VeState" value="<%=state%>">
        				  <input type="hidden" name="Vcategory" value="<%=category%>">
        				  <input type="hidden" name="username" value="<%=bo.getEMAIL_ID()%>">
        				  <input type="hidden" name="boid" value="<%=bo.getSEQUENTIAL_NO()%>">
        				  <button type="submit" class="btn btn-link" id="left2">View Catalog</button> 
        				  </form>

                             </p>
                             <p><br><p>
                          </div>
                        </div>
                        
                        <div class="row">
                          <div class="col-md-12">
                           <p class="left01"> SERVING BRAND :  <span class="left0">
							<%if(bo.getSERVING_BRANDS()!=null){out.println("<i>"+bo.getSERVING_BRANDS()+"</i>");}else{out.println("-");}%>
								</span> </p>
                         </div>
                        </div> 
                        
                         </div>
                         
                         <div class="col-md-2 left7">
                           <%if(bo.getPHOTO()!=null)
                                { %>
                                <img src="data:image/png;base64,<%=bo.getPHOTO()%>">
                                <%}else{ %>
                                <img src="images/ServiceImage.png" class="img-respance">
                                <%} %>
                           <%-- <a href="#"><img src="data:image/png;base64,<%=bo.getPHOTO() %>"></a> --%>
                         </div>
                         </div>
                        </div>                         
                        </div> 
                 <%}}
                      %>
                      
                      <nav aria-label="Page navigation example">
							
							 <table style="padding: 0 0px; border-right: 1px solid #ccc;">
							<tr style="border: 1px solid #ccc;">
							<td style="padding: 0 5px; border-right: 1px solid #ccc;">Pages</td>
							<%for(int i=1;i<=numofpages;i++){
								
							%><td style="padding: 0 1px; border-right: 1px solid #ccc;">
							<%
								if(i==currentPage)
								{
									%>
									<button type="submit" class="btn"><%=i%></button>
								<%}else
								{
							%>
							<form action="./SearchDistributor" method="post">
							
							 <input type="hidden" name="vechicleT" value="<%=vType%>">
							 <input type="hidden" name="manufacturer" value="<%=manufacturer%>">
							 <input type="hidden" name="VeState" value="<%=state%>">
							 <input type="hidden" name="Vcategory" value="<%=category%>">
	        				 <input type="hidden" name="page" value="<%=i%>">
	        				  <button type="submit" class="btn btn-link"><%=i%></button>
	        				</form>
        					</td>
        					<%}} %>
							</tr>
						  </table>
						  </nav>
					   
					   
	                      </div>
                      
                        
                        
                      </div>
                       <div class="clearfix">
                       
                       </div>
                   <!--======== end new search ========== -->
                           </div>
	                        </div>
	 
       <div class="clearfix"></div>
       <div class="col-md-12" style="height:85px;">
       <p></p>
      </div>
       <div class="clearfix"></div>
	<!-- Newsletter -->
	      <section class="get-offer">
		   <div class="container">
		   <div class="row">
		   <div class="col-sm-4"></div>
		   <div class="col-sm-5" style="text-align: center;">
		   <span>Subscribe to our Newsletter</span>
		   <h2>& Discover the best offers!</h2>
		   </div>
		   <div class="col-sm-4">
		   <div class="input-group">
		   <div class="input-group-btn">			
		   </div>
		   </div>
		   </div>
		   </div>
		   </div>
	      </section>
	      <div class="clearfix"></div>
	</div>
    
	
	<!-- Footer Section -->
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	<!-- jQuery -->
	<script src="assets/js/jquery.min.js" type="text/javascript"></script>
	<!-- jquery ui js -->
	<script src="assets/js/jquery-ui.min.js" type="text/javascript"></script>
	<!-- bootstrap js -->
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
	<!-- fraction slider js -->
	<script src="assets/js/jquery.fractionslider.js" type="text/javascript"></script>
	<!-- owl carousel js -->
	<script src="assets/owl-carousel/owl.carousel.min.js"
		type="text/javascript"></script>
	<!-- counter -->
	<script src="assets/js/jquery.counterup.min.js" type="text/javascript"></script>
	<script src="assets/js/waypoints.js" type="text/javascript"></script>
	<!-- filter portfolio -->
	<script src="assets/js/jquery.shuffle.min.js" type="text/javascript"></script>
	<script src="assets/js/portfolio.js" type="text/javascript"></script>
	<!-- magnific popup -->
	<script src="assets/js/jquery.magnific-popup.min.js"
		type="text/javascript"></script>
	<!-- range slider -->
	<script src="assets/js/ion.rangeSlider.min.js" type="text/javascript"></script>
	<script src="assets/js/jquery.easing.min.js" type="text/javascript"></script>
	<!-- custom -->
	<script src="assets/js/custom.js" type="text/javascript"></script>

<!-- 
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script> -->
        <script src="assets/js/st-demo.js"></script>
        <script src="assets/js/jquery.scrolling-tabs.js"></script>

</body>
</html>