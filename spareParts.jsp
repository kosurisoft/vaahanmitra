<%
try {
    response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache");
    response.setDateHeader ("Expires", 0);
    
   // System.out.println(session.getAttribute("user"));
    
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
 <!-- '<label>Specification '+ counter + ' : </label>'+ -->
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

 newTextBoxDiv.after().html(
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
	
	function calculate(str)
	{
		var price = document.getElementById("price").value;
		var gst = document.getElementById("gst").value;
		var finalprice =Math.abs(price-(price*(str/100)));
		var finalpricewithgst = Math.abs(finalprice+(finalprice*(gst/100)));
		document.getElementById("finalprice").value = finalpricewithgst;
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
#TextBoxesGroup{
line-height:7px;
 margin-bottom: 8px;
 }
#textbox{
    margin-bottom: 11px;
    }
    #ewgr{
    display: block;
    width: 100%;
    padding: .375rem .75rem;
    font-size: 1rem;
    line-height: 1.5;
    color: #55595c;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: .25rem;
    }
    #re2{
    margin: 0 10%;
    width: 85%;
    padding: 9px 11px;
    }
    .btn {
    display: inline-block;
    padding: .375rem 1rem;
    font-size: 1.2rem !important;
    font-weight: normal;
    line-height: 1.5;
    text-align: right;
    white-space: nowrap;
    vertical-align: middle;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    border: 0px solid transparent;
    border-radius: .25rem;
}
.btn:focus, .btn.focus, .btn:active:focus, .btn:active.focus, .btn.active:focus, .btn.active.focus {
    outline: thin none;
    outline: 0px auto -webkit-focus-ring-color !important;
    outline-offset: -2px;
}
.app .content {
    padding: 58px 50px 100px 25px;
}
label {
    display: inline-block;
    margin-bottom: .3rem;
    font-size: 15px;
    color: #000;
    font-weight: lighter;
}
.form-control {
    display: block;
    width: 100%;
    padding: .375rem .75rem;
    font-size: 1rem;
    line-height: 1.2;
    color: #55595c;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: .25rem;
}
.form-group {
    margin-bottom: 0.6rem !important;
}
.btn.btn-primary {
    color: #ffffff;
    background-color: #59c2e6;
    border-color: #59c2e6;
    line-height:20px;
}
</style>

<script>
var options = [];

$( '.dropdown-menu a' ).on( 'click', function( event ) {

   var $target = $( event.currentTarget ),
       val = $target.attr( 'data-value' ),
       $inp = $target.find( 'input' ),
       idx;

   if ( ( idx = options.indexOf( val ) ) > -1 ) {
      options.splice( idx, 1 );
      setTimeout( function() { $inp.prop( 'checked', false ) }, 0);
   } else {
      options.push( val );
      setTimeout( function() { $inp.prop( 'checked', true ) }, 0);
   }

   $( event.target ).blur();
      
   console.log( options );
   return false;
});
</script>
<script>
    // WRITE THE VALIDATION SCRIPT.
    function isNumber(evt) {
        var iKeyCode = (evt.which) ? evt.which : evt.keyCode
        if (iKeyCode != 46 && iKeyCode > 31 && (iKeyCode < 48 || iKeyCode > 57))
            return false;

        return true;
    }    
</script>
</head>
<body>
<%
		String message = (String) request.getAttribute("success");
		String bType = new BusinessOwnerService().getSparepartsBusinessType(session.getAttribute("user").toString());
	%>

	<div class="main-wrapper">
		<div class="app" id="app">

			<header class="" style="font-family: 'Oswald', sans-serif;">
			

			<div class="header-block header-block-nav">
				
			</div>
			</header>
			<br>

			<article class="content responsive-tables-page"
				style="background-color:#fff"> <section class="section">
			<div class="row">
				<!-- <h3 style="">SPARE PARTS DASHBOARD</h3> -->
				<div> <h3 class="col-md-12" align="center">SPARE PARTS DASHBOARD</h3></div>
				<div class="col-md-12">
					<div class="card"
						style="background: #fff; box-shadow: 0px 0px 2px 1px rgba(0, 0, 0, 0.15); border-bottom: 3px solid #a3b745;">
						<div class="card-block" style="border-bottom: 3px solid #a3b745;">
							<section class="example">
							<div class=" well" style="border-radius:4%">
								<form action="./AddSpareParts" method="POST"
									onSubmit="return validate()" enctype="multipart/form-data">
									
									<div class="col-md-12" align="center" style="background-color: #523f6d; color: #fff; font-size: 21px; border-radius: 6px; ">
									<em>ADD SPARE PARTS</em>
									</div>
									     <%
													if (message != null) {
												%>
												<h4 style="color: #59c2e6;"><%=message%>
												</h4>
												<%
													} else {
													}
												%>
									<div class="col-md-12"><br></div>
									<div class="col-md-5" align="center">
									<label><input type="radio" name="vehicleType" value="4," checked><b> FOUR WHEELER
									</b></label>				
									</div>
									<div class="col-md-5" align="center">
									<label><input type="radio" name="vehicleType" value="2," onclick="location.href='bikeSpareParts.jsp'"><b>
                                    	TWO WHEELER </b></label>
									</div>
									<div class="col-md-12"></div>
									
								  <div class="row">
									 <div class="col-md-4">
	                                 <div class="form-group">
								     <label for="states">Car Brand :</label>
								     <jsp:include page="./getNewCarBrand.jsp" />
	                                 </div>
	                                 </div>
	                                 
	                                 <div class="col-md-4">
	                                 <div class="form-group">
								     <label for="states">Car Model :</label>
								     <div id="txtHint1">
									 <select class="form-control"  name="carModel" class="form-control">
									 <option value="">SELECT MODEL</option>
									 </select>
                                     </div>
	                                 </div>
	                                 </div>
	                                 
	                                 <div class="col-md-4">
	                                 <div class="form-group">
								     <label for="states">Model Year :</label>
								     <select id="year1" class="form-control" name="year1">
								     <option>SELECT YEAR</option>
									 </select>
	                                 </div>
	                                 </div>
	                             </div>
	                             
	                             
	                             <div class="row">
									 <div class="col-md-4">
	                                 <div class="form-group">
								     <label for="states">Manufacturer :</label>
								     <input type="text" name="companyName" class="form-control" placeholder="Enter Manufacturer Name" required>
	                                 </div>
	                                 </div>
	                                 
	                                 <div class="col-md-4">
	                                 <div class="form-group">
								     <label for="states">PartNo :</label>
								     <input type="text" name="partNo" class="form-control" placeholder="Enter Part No." required>
	                                 </div>
	                                 </div>
	                                 
	                                 <div class="col-md-4">
	                                 <div class="form-group">
								     <label for="states">SKU :</label>
								     <input type="text" class="form-control" name="csku" required id="sku" placeholder="Enter SKUID">
	                                 </div>
	                                 </div>
	                             </div>
                                 
                                 
                                  <div class="row">
									 <div class="col-md-4">
	                                 <div class="form-group">
								     <label for="states">Part Name :</label>
								     <input type="text" name="name" placeholder="Enter Part Name" class="form-control" required>
	                                 </div>
	                                 </div>
	                                 
	                                 <div class="col-md-4">
	                                 <div class="form-group">
								     <label for="states">Category :</label>
								     <select name="category" class="form-control" onchange="getSubCategory(this.value)">
									<option value="SPAREPARTS">Category</option>
									<%
									ArrayList<Category> cat=new GetSparePartsDetails().getCategories();
									for(int i=0;i<cat.size();i++)
									{
										Category c=cat.get(i);
										%>
										<option><%=c.getCATEGORY()%></option>
										<%
									}
									%>
									 </select>
	                                 </div>
	                                 </div>
	                                 
	                                 <div class="col-md-4">
	                                 <div class="form-group">
								     <label for="states">Sub Category :</label>
								     <div class="" id="subcat">
								     <input type="text" name="subcategory"
													class="form-control" placeholder="Enter Sub Category"></input>
	                                 </div>
	                                 </div>
	                                 </div>
	                              </div>
							
								 
								 <div class="row">
									 <div class="col-md-2">
	                                 <div class="form-group">
								     <label for="states">Warranty :</label><br>
								      <input type="radio" name="warranty" value="YES" onclick="show2();" required> YES </label> 
												<label><input type="radio" name="warranty" value="0" onclick="show1();"> NO </label>
													<div id="div1" style="display: none;">
														<input type="text" class="form-control" name="war" placeholder="Warranty"><!--  onkeyup="NumAndTwoDecimals(event , this);" -->
													</div>
	                                 </div>
	                                 </div>
	                                 
	                                 <div class="col-md-6">
	                                 <div class="form-group">
								     <label for="states">Specifications :</label>
								     <div id='TextBoxesGroup'>
									<div id="TextBoxDiv1">
									<input name="specification" type="text" class="form-control" id="specification" placeholder="Enter Specification 1" />
									</div>
									<br> 
									</div> 
	                                 </div>
	                                 </div>
	                                 
	                                <div class="col-md-2" style="padding: 0 0;">
	                                 <label style="color:#fff;">Specigffhggjalu</label>
									 <input type='button' value='Add Specs' class="btn btn-primary" id='addButton'>
	                                </div>
	                                
	                                 <div class="col-md-2" style="padding: 0 0;">
	                                 <label for="states" style="color:#fff;">Sbbbmhg</label>
	                                 <input type='button' class="btn btn-primary" value='Remove Specs' id='removeButton'>
	                                 </div>
	                                 
	                                 
	                              </div>
	                              	
								
	                              
	                              <div class="row">
	                              
									 <div class="col-md-12">
	                                 <div class="form-group">
								     <label for="states">Description :</label>
								     <textarea name="description"  rows='2' coloumn='2'
									 class="form-control" id="desrciption" placeholder="Enter Description"></textarea>
	                                 </div>
	                                 </div>
	                                 
	                              </div>		
									
									
								 <div class="row">
									
	                                 <div class="col-md-4">
	                                 <div class="form-group">
								     <label for="states"><%if(bType.equals("M")){ %>
										Distributor
										<%}else if(bType.equals("D")){ %>
										Retailer
										<%}else if(bType.equals("R")){ %>
										Spares Shop/Customer
										<%}%>
										Final Price :</label>
								     <input name="finalprice" readonly="readonly" class="form-control"
													onkeyup="NumAndTwoDecimals(event , this);" type="text"
													id="finalprice" placeholder="Enter Price" maxlength="20">
	                                 </div>
	                                 </div>
	                                 
	                                 <div class="col-md-4">
	                                 <div class="form-group">
								     <label for="states">Image :</label>
								     <input type="file" class="form-control"	name="photo" placeholder="Enter Image" required>
	                                 </div>
	                                 </div>
	                                 
	                              <div class="col-md-4"></div>
	                                 
	                              </div>
	                              	
								<div class="row">
									 <div class="col-md-4">
	                                 <div class="form-group">
								     <label for="states">MRP :</label>
								     <input name="price" class="form-control" onkeyup="NumAndTwoDecimals(event , this);" type="text" id="price" placeholder="Enter Price" maxlength="20">
	                                 </div>
	                                 </div>
	                                 
	                                 <div class="col-md-2 col-xs-7">
	                                 <div class="form-group">
								     <label for="states">Discount :</label>
								     <input name="discount" id="discount" class="form-control"
													 id="tbNumbers" value="0" onkeypress="javascript:return isNumber(event)" onchange="calculate(this.value)"  placeholder="Your Discont" maxlength="2">
	                                 </div>
	                                 </div>
	                                 
	                                 <div class="col-md-1 col-xs-3" style="padding:0 0px;">
	                                 <div class="form-group">
								     <label for="states" style="color:#fff;">dgdhtDunhgyvyug:</label>
								     <span>%</span>
	                                 </div>
	                                 </div>
	                                 
	                                 <div class="col-md-3 col-xs-7">
	                                 <div class="form-group">
								     <label for="states">GST(CGST+SGST) :</label>
								     <input name="gst" id="gst" class="form-control"
													 value="0"readonly="readonly">
	                                 </div>
	                                 </div>
	                                 
	                                 <div class="col-md-1 col-xs-3" style="padding:0 0px;">
	                                 <div class="form-group">
								     <label for="states" style="color:#fff;">jytjyDugfuyu n:</label>
								     <span>%</span>
	                                 </div>
	                                 </div>
	                                 
	                                 <div class="col-md-1"></div>
	                                 
	                             </div>
                                 	
									
								<div class="row">
									 <div class="col-md-10">
	                                 <div class="form-group">
								     <label for="states">Delivery Method :</label>
								     <label>
										<input type="checkbox" name="dmethod" checked  id="price" value="CASH ON DELEVERY"> CASH ON DELIVERY 
									</label>
									<label>
										<input type="checkbox" name="dmethod" id="price" value="CARD PAYMENT"> CARD PAYMENT 
									</label>
									<label>
										<input type="checkbox" name="dmethod" id="price" value="STORE PICKUP"> STORE PICKUP  
									</label>
	                                 </div>
	                                 </div>

	                             </div>	
								
								
								<div class="row">
								
								     <div class="col-md-3"> </div>
	                                 
									 <div class="col-md-3">
	                                 <div class="form-group">
								     <button TYPE="submit" style="background-color: #a3b745; border: 1px solid #a3b745;" class="btn btn-primary">ADD SPARE PART</button>
	                                 </div>
	                                 </div>
	                                 
	                                 <div class="col-md-3">
	                                 <div class="form-group">
								     <button TYPE="submit" style="background-color: #a3b745; border: 1px solid #a3b745;" class="btn btn-primary">RESET</button>
	                                 </div>
	                                 </div>
	                                 
                                   <div class="col-md-3"> </div>
                                   
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

			<!-- /.modal -->

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
	<script>
	function getSubCategory(str)
	{
	 if (str=="")  
	 {  
	  document.getElementById("subcat").innerHTML="";  
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
	   document.getElementById("subcat").innerHTML=xmlhttp.responseText; 
	   document.getElementById("gst").value=document.getElementById("catgst").value;
	   document.getElementById("price").value="";
		   document.getElementById("discount").value="";
			   document.getElementById("finalprice").value="";
	   }  
	  }
	 xmlhttp.open("GET","./getSubcategory.jsp?category="+str,true);   
	 xmlhttp.send();    
	 } 
	
	</script>
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
