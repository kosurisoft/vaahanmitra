<%
try {
    response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache");
    response.setDateHeader ("Expires", 0);
    
    /* System.out.println(session.getAttribute("user")); */
    
    if (session.getAttribute("user")==null) {
    	%>
<jsp:forward page="./login3.jsp" ></jsp:forward>   <% }
    else {}
}
catch(Exception ex) {
    out.println(ex);
}
%>
<%@ page language="java" import="com.vaahanmitra.model.*,com.vaahanmitra.service.*,java.util.*" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page
	import="com.vaahanmitra.model.*,com.vaahanmitra.daoImpl.*,com.vaahanmitra.dao.*,com.vaahanmitra.service.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Vaahanmitra</title>
<link href="assets/images/cg1.png" type="icon/img" rel="icon">
<script src="./css/carmodels1.js" type="text/javascript"></script>
<jsp:include page="./sparePartsMenu.jsp" />
<%-- <jsp:include page="./right-side.jsp" /> --%>
<jsp:include page="./topMenu.jsp" />
<link rel="stylesheet" href="css/vendor.css">
<script type="text/javascript">

$(document).ready(function(){

    var counter = 2;

    $("#addButton").click(function () {

 if(counter>20){
            alert("Only 20 textboxes allow");
            return false;
 }

 var newTextBoxDiv = $(document.createElement('div'))
      .attr("id", 'TextBoxDiv' + counter);

 newTextBoxDiv.after().html('<label>Specification '+ counter + ' : </label>' +
       '<input type="text" class="form-control" placeholder="Enter Specification '+ counter + '" name="specification"'  + counter +
       '" id="textbox"' + counter + '" value="" >');

 newTextBoxDiv.appendTo("#TextBoxesGroup");


 counter++;
     });

     $("#removeButton").click(function () {
 if(counter==2){
          alert("No more textbox to remove");
          return false;
       }

 counter--;

        $("#TextBoxDiv" + counter).remove();

     });

     $("#getButtonValue").click(function () {

 var msg = '';
 for(i=1; i<counter; i++){
      msg += "\n Textbox #" + i + " : " + $('#textbox' + i).val();
 }
       alert(msg);
     });
  });
</script>


<script>
function NumAndTwoDecimals(event , obj){
	reg = /[^0-9.,]/g;
	obj.value =  obj.value.replace(reg,"");
 }
</script>

<script language="javascript">
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

<script type="text/javascript">
         function checkSpcialChar(event){
            if(!((event.keyCode >= 65) && (event.keyCode <= 90) || (event.keyCode >= 97) && (event.keyCode <= 122) || (event.keyCode >= 48) && (event.keyCode <= 57))){
               event.returnValue = false;
               return;
            }
            event.returnValue = true;
         }
 </script>

<script>
	function RestrictSpace() {
		if (event.keyCode == 32) {
			event.returnValue = false;
			return false;
		}
	}
</script>

<script>
	function showModel(str) {
		if (str == "") {
			document.getElementById("txtHint1").innerHTML = "";
			return;
		}
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("txtHint1").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "./getNewCarModel.jsp?brand=" + str, true);
		xmlhttp.send();
	}
</script>


<script type="text/javascript">

function show1(){
	  document.getElementById('div1').style.display ='none';
	}
	function show2(){
	  document.getElementById('div1').style.display = 'block';
	}

</script>
<style>
 .one{
    font-size: 17px;
    color: #000;
    font-weight: 400;
    font-family: sans-serif;
    }
   .two{
    padding:0 9px;
   } 
   .form-control{
     height:35px !important;
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
		border: none;
		border-bottom: 1px solid #eee; 
		position: relative;
		padding-left: 50%; 
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
  .thre th{
    font-size: 18px !important;
    font-weight:500;
    color: #523f6d !important;
    font-family: sans-serif;
    margin: 0 0px;
    padding: 5px;
    }
   .table-striped tbody tr:nth-of-type(odd) {
    background-color: #ffffff;
} 
.four{
    font-size: 17px;
    color: #ff4444;
    text-decoration: underline;
    padding: 9px;
    }
    .table-bordered th, .table-bordered td {
    border: 1px solid #eceeef;
    font-size: 15px;
    color: #444648;
    line-height:30px;
    font-family: sans-serif;
    }
    .table-responsive {
    display: block;
    width: 100%;
    height: 380px;
    overflow-x: auto;
  }
</style>
</head>
<body>
<%
		String message = (String) request.getAttribute("success");
ArrayList<OrderDetails> alor=new ArrayList<OrderDetails>();
Order order1=new Order();
int price=0,quantity=0,discount=0,gst=0,totalprice=0,grandTotal=0;
String usertype="",fromDate="",toDate="",requestId="",userId="";
try
{
	if(request.getParameter("fromDate")!=null)
	{
		fromDate=request.getParameter("fromDate");
	}
	if(request.getParameter("toDate")!=null)
	{
		toDate=request.getParameter("toDate");
	}
	if(request.getParameter("requestId")!=null)
	{
		requestId=request.getParameter("requestId");
	}
	if(request.getParameter("userId")!=null)
	{
		userId=request.getParameter("userId");
	}
	/* usertype=request.getAttribute("usertype").toString(); */
	alor=(ArrayList<OrderDetails>)request.getAttribute("orderDetails");
	order1 =(Order) request.getAttribute("orderHeader");
	%>

	<div class="main-wrapper">
		<div class="app" id="app">

		<header class="" style="font-family: 'Oswald', sans-serif;">
			
	    <div class="header-block header-block-nav">
				
			</div>
			</header>
			
			<article class="content responsive-tables-page" style="background-color:#fff"> 
				<section class="section">
			<div class="row">
				<!-- <h3 style="">SPARE PARTS DASHBOARD</h3> -->
				<div> <h3 class="col-md-12" align="center"><!-- SPARE PARTS -->DISTRIBUTOR DASHBOARD</h3></div>
				<div class="col-md-12" style="padding:0px 0px;">
					<div class="card"
						style="background: #fff; box-shadow: 0px 0px 2px 1px rgba(0, 0, 0, 0.15); border-bottom: 3px solid #a3b745;">
						<div class="card-block" style="border-bottom: 3px solid #a3b745;">
							<section class="example">
							<div class="table-responsive well" style="border-radius:4%">
							<%-- <form action="./GetOrderRequests" method="post">
								<div class="col-md-10" style="padding:0px 0px;">
								
                                    <div class="form-group col-md-3 col-sm-6 two">
						            <label for="name" class="one">From Date :</label>
						            <input type="Date" class="form-control input-sm" name="fromDate" id="fromDate" value="<%=fromDate!="" ? fromDate :"" %>" placeholder="DD-MM-YYYY">
						            </div>
						            
						            <div class="form-group col-md-3 col-sm-6 two">
						            <label for="name" class="one">To Date :</label>
						            <input type="date" class="form-control input-sm" name="toDate" id="toDate"  value="<%=toDate!="" ? toDate :"" %>" placeholder="DD-MM-YYYY">
						            </div>
						            
						            <div class="form-group col-md-3 col-sm-6 two">
						            <label for="name" class="one">Request ID :</label>
						            <input type="text" class="form-control input-sm" id="requestId" name="requestId" value="<%=requestId!="" ? requestId :"" %>" placeholder="">
						            </div>
						            
						            <div class="form-group col-md-3 col-sm-6 two">
						            <label for="name" class="one">
						            <%if(usertype.equalsIgnoreCase("D")){ %>
						             Retailer
						             <%} else if(usertype.equalsIgnoreCase("R")){ %>
						             Distributor
						             <%}%> ID :</label>
						            <input type="text" class="form-control input-sm" id="userId" name="userId" value="<%=userId!="" ? userId :"" %>" placeholder="">
						            </div>
            
                                </div>
                                
                                <div class="col-md-2"  style="padding:0px 0px;">
                                   <div class="form-group col-md-12 col-sm-12">
						            <label for="name" style="color:#fff">Ret</label>
						            <button type="submit" class="btn btn-info btn-block" style="height: 35px;">Search</button>
						            </div>
                                </div>
                                </form> --%>
                                
                                <table class="col-md-12 table-bordered table-striped table-condensed cf">
        		                <thead class="cf">
        		                <tr>
        		                <td class="numeric" colspan="4"> Order Details</td>
        		                </tr>
        		                </thead>
		        			    <tr class="thre">
		        				<th class="numeric">Order ID</th><th class="numeric"><%=requestId %></th>
		        				<th class="numeric" colspan="2">Distributor Business Name</th><th class="numeric" colspan="2"><%=order1.getBUSINESS_NAME() %></th>
		        				</tr>
		        				<tr>
		        				<th class="numeric">Date Of Order</th><th class="numeric"><%=order1.getDATE_OF_REQUEST() %></th>
		        				<th class="numeric">No. Of Items</th><th class="numeric"><%=order1.getNO_OF_ITEMS() %></th>
		        				<th class="numeric">Status</th><th class="numeric"><%=order1.getSTATUS() %></th>
		        			    </tr>
		        		        
                                </table>
                                
                                
                                <!--================ table section ================-->
                                <div class="col-md-12" style="padding:0 0px;">
                                     <div id="no-more-tables">
                                     <table class="col-md-12 table-bordered table-striped table-condensed cf">
        		                <thead class="cf"><tr>
        		                <td class="numeric" colspan="8">Order Details</td>
        		                </tr>
        		                </thead>
		        			    <tr class="thre">
		        				<th class="numeric">Part No</th>
		        				<th class="numeric">Part Name</th>
		        				<th class="numeric">Manufacturer</th>
		        				<th class="numeric">Dist. Price</th>
		        				<th class="numeric">Discount</th>
		        				<th class="numeric">Quantity</th>
		        				<th class="numeric">GST</th>
		        				<th class="numeric">Total Price</th>
		        			    </tr>
		        		        
		        		<%
		        			
		        			if(alor.size()<=0)
		        			{%>        
		        			   <tr>

		        				<td colspan="6">No Records Found......</td>
		        				
		        			   </tr>
		        			   <%}
		        			else
		        			{
		        				for(int i=0;i<alor.size();i++)
		        				{
		        					OrderDetails order=alor.get(i);
		        							price = Integer.parseInt(order.getMRP());
		        							discount = Integer.parseInt(order.getDISCOUNT());
		        							quantity = Integer.parseInt(order.getQUANTITY());
		        							gst = Integer.parseInt(order.getGST());
		        							
		        							totalprice = (price - (price*discount)/100);
		        							
		        							totalprice = (totalprice + (totalprice*gst)/100)*quantity;
		        							grandTotal+=totalprice;
		        		%>        
        			   <tr>

        				<td data-title="Request Date" class="numeric"><%=order.getPARTNO()%></td>
        				<td data-title="Retailer ID" class="numeric"><%=order.getSP_NAME()%></td>
        				<td data-title="Request status" class="numeric"><%=order.getMANUFACTURE_COMPANY_NAME()%></td>
        				<td data-title="Retailer ID" class="numeric"><%=price%></td>
        				<td data-title="Retailer ID" class="numeric"><%=discount%>%</td>
        				<td data-title="Retailer ID" class="numeric"><%=quantity%></td>
        				<td data-title="Retailer ID" class="numeric"><%=gst%>%</td>
        				<td data-title="Request status" class="numeric"><%=totalprice%></td>
        				
        			   </tr>
        			   <%
		        				}}
		        		}catch(Exception e)
		        		{
		        			e.printStackTrace();
		        		}
        			   %>
        			    <tr>

        				<td data-title="Request ID" colspan="7" align="right" class="numeric">Grand Total</td>
        				<td data-title="Request status" class="numeric"><%=grandTotal%></td>
        				
        			   </tr>
        	    </table>
                </div>
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

		</div>
	    </div>

	    <div class="ref" id="ref">
		<div class="color-primary"></div>
		<div class="chart">
		<div class="color-primary"></div>
		<div class="color-secondary"></div>
		</div>
	    </div>
	    
	<script>
	var start = 1970;
    var end = new Date().getFullYear();
    var options = "";
    for(var year = end ; year >=start; year--){
    options += "<option>"+ year +"</option>";
    }
    document.getElementById("year1").innerHTML = options;
    </script>

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
