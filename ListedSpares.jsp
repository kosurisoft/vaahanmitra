<%@ page language="java" import="com.vaahanmitra.model.*,com.vaahanmitra.service.*,java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    color: #353333;
    font-size:18px;
    margin:0 -8px;
    cursor: pointer;
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
        border: 1px solid #ddd;
        border-radius: 3px;
        margin-bottom: 2px;
    }
    .left p{
        font-size: 17px;
        margin: 13px 19px;
          line-height: inherit !important;
    }
    .re2{
    font-size: 16px;
    color: #000;
    margin: 15px 20px;
    }
    .re3{
    margin: 10px 17px;
    font-size: 19px;
    color: #9a2220;
    font-family: sans-serif;
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
.re6 span{
    font-size: 18px;
    color: #000;
}
.re6 p{
    padding: 0 0;
    margin: 6px 0 !important;
    font-size: 15px;
    }
    #re7{
    padding: 0 0;
    padding-top: 7px;
    padding-bottom: 10px;
    }
    #one1{
    float: right;
    margin: 0 5px !important;
    line-height:16px;
    font-size: 16px;
    margin-bottom:4px !important;
    }
    .ty{
    font-size: 18px;
    margin: 19px 8px;
    line-height: 0px;
    color: #000;
    }
    .ty4{
        margin-bottom:0px;
        margin-top:0px;
    }
    .ty1{
       color:#000;
      font-size: 15px !impportant;
       font-size: 15px;
      }
     .ty2{
      font-size: 14px;
      }
      .ty3{
      line-height: 0px;
    margin: 0 0 !important;
    }
    .get1{
        padding: 0 0;
        }
        .get10{
        padding: 0 4px;;
        }
       .get2{
           font-size: 20px;
           color: #000;
          margin: 8px 32px;
        }
    #get3{
    margin: 0 0;
    font-size: 19px !important;
    } 
    .left:hover{
    border: 1px solid #ddd;
    border-radius: 3px;
    margin-bottom: 3px;
    box-shadow: 0 0 9px #ccc;
}
.ty21 {
    font-size: 14px;
    line-height: inherit;
}
.left7{
    text-align: center;
}
.sticky + .content {
    padding-top: 69px !important;
}
.left7 a{
    text-align: center;
     font-size: 85px;
     color: #ccc;
}
.re6{
    margin-top: 5px;
    margin-bottom: 4px;
    }
    @media only screen and (max-width: 800px) {
	#no-more-tables table, 
	#no-more-tables thead, 
	#no-more-tables tbody, 
	#no-more-tables th, 
	#no-more-tables td, 
	#no-more-tables tr { 
		display: block; 
	}
	#no-more-tables thead tr { 
		position: absolute;
		top: -9999px;
		left: -9999px;
	}
	#no-more-tables tr { border: 1px solid #ccc; }
	#no-more-tables td { 
		/* Behave  like a "row" */
		border: none;
		border-bottom: 1px solid #eee; 
		position: relative;
		padding-left:40%; 
		white-space: normal;
		text-align:left;
	}
	#no-more-tables td:before { 
		position: absolute;
		top: 6px;
		left: 6px;
		width: 45%; 
		padding-right: 10px; 
		white-space: nowrap;
		text-align:left;
		font-weight: bold;
	}
	#no-more-tables td:before { content: attr(data-title); }
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
#grt9{
    position: fixed;
    float: right;
    width: 84%;
    z-index: 1;
    }
    label {
    display: inline-block;
    max-width: 100%;
    margin-bottom: 11px !important;
    font-weight: 500;
    line-height: 12px;
    font-size: 15px;
}
.navbar {
    position: relative;
    min-height: 50px;
    margin-bottom: 0px;
    border: 1px solid transparent;
}
.listed span{
    font-size: 16px;
    font-weight: bold;
    }
 .listed p{
     font-size: 15px;
     line-height: 10px;
     }
 .listed{
    border: 1px solid #ccc;
    border-radius: 5px;
    margin-top: 11px;
    padding: 0 8px;
    margin: 5px;
    }
</style>
</head>
<body>
	<div class="se-pre-con"></div>
	    <div id="page-content">
		<jsp:include page="./homeTop.jsp"></jsp:include>
       
        <div class="container">
                  
                      <!--======== new search ========== -->
                      <div class="col-md-12">
                        <div class="col-md-4">
                           <div class="listed">
                           <span> Hi, <%=session.getAttribute("user") %></span>
                           <p> Listed Spareparts For Order</p>
                           <p><br><br></p>
                           </div>
                        </div>
                         
                        <div class="col-md-5">
                           <div class="listed">
                           <p>Distributor Details :    </p>
                           <p>Business name :    </p>
                           <p>Email iD :    </p>
                           <p>Contact Number :  </p>
                           </div>
                         </div>
                        
                         <div class="col-md-3">
                              <div class="col-md-12" style="margin-top:3px;">
                              <div class="form-group">
							  <label for="states" style="color:#fff;">fgdh</label>
						      <button type="submit" class="btn btn-danger btn-block">Place Order</button>
                              </div>
                              </div> 
                        </div>
                        
                        <div class="clearfix"></div>
                      <div class="col-md-12 re5" style="padding: 0 5px;">
                      <!--======== end section ===========-->
                      <!--================== new table section ================ -->
                       <div class="col-lg-12">
                       <p></p>
                        <div id="no-more-tables">
                      <table class="col-md-12 table-bordered table-striped table-condensed cf">
        		      <thead class="cf">
        		     <%
        		     ArrayList<SpareParts> alsp=new ArrayList<SpareParts>();
        		     try
        		     {
        		    	 alsp=(ArrayList<SpareParts>)request.getAttribute("listedSpares");
        		    	 
        		     %>
        			<tr>
        				<th class="numeric">SpareParts Name</th>
        				<th class="numeric">Brand</th>
        				<th class="numeric">Model</th>
        				<th class="numeric">Part No.</th>
        				<th class="numeric">Warranty</th>
        				<th class="numeric">Price</th>
        				<th class="numeric">GST</th>
        				<th class="numeric">Discount</th>
        				<th class="numeric">Price PE</th>
        				<th class="numeric">Quantity</th>
        				<th class="numeric">Amount</th>
        				<th class="numeric"></th>
        			</tr>
        		</thead>
        		<tbody>
        		<%
        		if(alsp.size()<=0)
        		{
        			
        		}
        		else
        		{
        			for(int i=0;i<alsp.size();i++)
   		    	 	{
        				SpareParts sp=new SpareParts();
        				sp=alsp.get(i);
        				/* float finalprice= (sp.getPRICE()-(sp.getPRICE()*sp.getDISCOUNT()))*(sp.getGST_PERCENT()/100); */
   		    	 
        		%>
        			<tr>
  
        				<td data-title="SpareParts Name" class="numeric"><%=sp.getSP_NAME() %></td>
        				<td data-title="Brand" class="numeric"><%=sp.getVEHICLE_BRAND() %></td>
        				<td data-title="Model" class="numeric"><%=sp.getVEHICLE_MODEL() %></td>
        				<td data-title="Part No." class="numeric"><%=sp.getPARTNO() %></td>
        				<td data-title="Warranty" class="numeric"><%=sp.getWARRANTY() %></td>
        				<td data-title="Price" class="numeric"><%=sp.getPRICE() %></td>
        				<td data-title="GST" class="numeric"><%=sp.getGST_PERCENT() %></td>
        				<td data-title="Discount" class="numeric"><%=sp.getDISCOUNT()%>%</td>
        				<td data-title="Price Per Each" class="numeric"></td>
        				<td data-title="Quantity" class="numeric"><input type="text" name="quantity" style="width:60%; height: 25px;" class="form-control" placeholder="Quantity" size="3"></td>
        				<td data-title="Amount" class="numeric"><input type="text" name="amount" style="width:60%; height: 25px;" class="form-control" placeholder="amount" readonly="readonly"></td>
        				<td data-title="" class="numeric"><input type="checkbox" name="choice" value="<%=sp.getID()%>" class="form-control" checked="checked" style="width:21px; height:18px;"></td>
        				
        			</tr>
        		<%
   		    	 }        		
        		
        		}
		     }catch(Exception e)
		     {
		    	 
		     } %>	
        			      		</tbody>
        	  </table>
               </div>
                             </div> 
                             
                             
                             <!--=============== end new table section =========== -->          
                      
                      </div>
                      
                      <!-- <div class="col-md-12">
					   <nav aria-label="Page navigation example">
					   <ul class="pagination justify-content-end">
					   <li class="page-item disabled">
					   <a class="page-link" href="#" tabindex="-1" style="border-left: none;">Previous</a>
					   </li>
					   <li class="page-item"><a class="page-link" href="#">1</a></li>
					   <li class="page-item"><a class="page-link" href="#">2</a></li>
					   <li class="page-item"><a class="page-link" href="#">3</a></li>
					   <li class="page-item">
					   <a class="page-link" href="#">Next</a>
					   </li>
					   </ul>
					   </nav>
					   
	              	  </div>  -->
                      
                      </div>
                       <div class="clearfix"></div>
                   <!--======== end new search ========== -->
                           </div>
	
     <div class="clearfix"></div>
      <div class="col-md-12" style="height:100px;">
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