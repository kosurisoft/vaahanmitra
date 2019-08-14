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
	import="com.vaahanmitra.model.*,java.util.*,com.vaahanmitra.service.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Vaahanmitra</title>
<link href="assets/images/cg1.png" type="icon/img" rel="icon">
<script src="./css/carmodels1.js" type="text/javascript"></script>
<jsp:include page="./AdminMenu.jsp" />
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
	function getBusinessOwnerDetails(str) {
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
		xmlhttp.open("GET", "./getBusinessOwnerDetails.jsp?user=" + str, true);
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
<script>
$(document).ready(function () 
		 { 
		  $("#watch-me").click(function()
		  {
		    $("#show-me:hidden").show('slow');
		   $("#show-me-two").hide();
		   $("#show-me-three").hide();
		   });
		   $("#watch-me").click(function()
		  {
		    if($('watch-me').prop('checked')===false)
		   {
		    $('#show-me').hide();
		   }
		  });
		  
		  
		  
		  $("#see-me").click(function()
		  {
		    $("#show-me-two:hidden").show('slow');
		   $("#show-me").hide();
		   $("#show-me-three").hide();
		   });
		   $("#see-me").click(function()
		  {
		    if($('see-me-two').prop('checked')===false)
		   {
		    $('#show-me-two').hide();
		   }
		  });
		  
		  
		  $("#look-me").click(function()
		  {
		    $("#show-me-three:hidden").show('slow');
		   $("#show-me").hide();
		   $("#show-me-two").hide();
		   });
		   $("#look-me").click(function()
		  {
		    if($('see-me-three').prop('checked')===false)
		   {
		    $('#show-me-three').hide();
		   }
		  });
		  
		 });

</script>

</head>
<body>
<%
		String message = (String) request.getAttribute("success");
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
				<div> <h3 class="col-md-12" align="center">UPLOAD INVOICE</h3></div>
				<div class="col-md-12" style="padding:0px 0px;">
					<div class="card"
						style="background: #fff; box-shadow: 0px 0px 2px 1px rgba(0, 0, 0, 0.15); border-bottom: 3px solid #a3b745;">
						<div class="card-block" style="border-bottom: 3px solid #a3b745;">
							<section class="example">
							<div class="table-responsive well">
							  <div class="col-md-10" style="padding:0px 0px;"><!-- Vehicle Type --></div>
							  <div class="col-md-2" style="padding:0px 0px;"></div>
								<form action="./UploadSparepartsInvoice" method="post" enctype="multipart/form-data">
								<div class="col-md-10" style="padding:0px 0px;">
								    <!-- <input style="width: 17px; height: 17px;" id='watch-me' name='vehicleType' value="2,"  type='radio' checked /> <span style="font-size: 16px; font-weight: 500;"> Two Wheeler</span> &nbsp; 
								    <input style="width: 17px; height: 17px;" id='see-me' name='vehicleType' value="4,"  type='radio' /> <span style="font-size: 16px; font-weight: 500;"> Four Wheeler</span> -->
                               
                                  <div id='show-me'>
                                  <div class="form-group col-md-12 col-sm-12 two">
                                    <label for="sel1" class="one"></label>
							        <%
							        String username="";
							        try{
							        	if(session.getAttribute("user")!=null)
							        	{
							        		username=session.getAttribute("user").toString();
							        	}
							        	if(request.getAttribute("message")!=null){out.println(request.getAttribute("message"));}}catch(Exception e){} %>
							        </div>
                                  <div class="form-group col-md-12 col-sm-12 two">
                                    <label for="sel1" class="one">Vendor:</label>
							        
							        <%
							        ArrayList<Vendor> alv=new ArrayList<Vendor>();
							        alv=new VendorService().getVendorsPostedBy(username);
							        %>
							        <select name="vendorid" class="form-control" id="sel1" onchange="getBusinessOwnerDetails(this.value)">
							        <option value="">Select Shop</option>
							        <%
							        for(int i=0;i<alv.size();i++)
							        {
							        	Vendor ve=alv.get(i);
							        %>
							        <option value="<%=ve.getVENDOR_ID()%>"><%=ve.getVENDOR_NAME()%> - <%=ve.getGSTIN_UIN() %></option>	
							        <%}
							        %>
							        </select>
							        </div>
                                    <div class="form-group col-md-12 col-sm-12 two">
                                    <label for="sel1" class="one">Spareparts Shop:</label>
							        
							        <%
							        ArrayList<BusinessOwnerRegister> al=new ArrayList<BusinessOwnerRegister>();
							        al=new BusinessOwnerService().getSPBusinessOwners();
							        %>
							        <select name="sparepartsshop" class="form-control" id="sel1" onchange="getBusinessOwnerDetails(this.value)">
							        <option value="">Select Shop</option>
							        <%
							        for(int i=0;i<al.size();i++)
							        {
							        	BusinessOwnerRegister bo=al.get(i);
							        	if(bo.getVERIFIED().equals("AV"))
							        	{
							        %>
							        <option value="<%=bo.getEMAIL_ID()%>"><%=bo.getBUSINESS_NAME() %>- <%=bo.getGSTNO() %></option>	
							        <%}}
							        %>
							        </select>
							        </div>
							        
							        <div class="form-group col-md-3 col-sm-3 two">
                                    <label for="sel1" class="one">Invoice No. :</label>
							        <input type="text" name="invoiceno" id="invoiceno" class="form-control">
							        </div>
							        
							        <div class="form-group col-md-3 col-sm-3 two">
                                    <label for="sel1" class="one">Invoice Date. :</label>
							        <input type="date" name="invoicedate" id="invoicedate" class="form-control">
							        </div>
							        <div id="txtHint1" class="form-group col-md-12 col-sm-12 two">
							        
							        </div>
                                    <div class="form-group col-md-8 col-sm-6 two">
						            <label for="name" class="one">Upload File :<a href="./templatesheets/Invoice Template.xlsx">Format Excel Sheet Download Here...</a></label>
						            <input type="file" class="form-control input-sm" name="file" id="name" placeholder="Upload File" required>
						            </div>
						          
                                    <div class="form-group col-md-2 col-sm-12">
						            <label for="name" style="color:#fff">Ret</label>
						            <button type="submit" class="btn btn-info btn-block" style="height: 35px;">Upload</button>
						            </div>
                                 </div>
        
                                </div>
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
