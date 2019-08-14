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
	function getSparesBrands(str) {
		
		if (str == "") {
			document.getElementById("SBrands").innerHTML = "";
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
				document.getElementById("SBrands").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "./getBrandsByCategory.jsp?category="+str, true);
		xmlhttp.send();
	}
	
function storeQuantity(id,price,quantity) {
		
	var str = id+"-"+quantity;
	document.getElementById(id).innerHTML = quantity*price;
		if (str == "") {
			document.getElementById("qty").innerHTML = "";
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
				var data = xmlhttp.responseText;
				document.getElementById("itemTotal").innerHTML = xmlhttp.responseText;
				document.getElementById("itemsTotal").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "./addSparepartsQuantityForCart.jsp?quantity="+str, true);
		xmlhttp.send();
	}
</script>

<script type="text/javascript">
window.toggleChevron = function(button) {
    $(button).find('span').toggleClass('glyphicon glyphicon-plus glyphicon glyphicon-minus ');
}
</script>
<script type="text/javascript">

function cartItems(item)
{
	if (item == "") {
		document.getElementById("selecteditemsincart").innerHTML = "";
		/* document.getElementById("selecteditemsincart").value = ""; */
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
			document.getElementById("selecteditemsincart").innerHTML = xmlhttp.responseText;
			/* document.getElementById("selecteditemsincart").value = xmlhttp.responseText; */
		}
	}
	xmlhttp.open("GET", "./addSparepartsItemToCart.jsp?itemNo="+item, true);
	xmlhttp.send();
	
	}
	
function getQuantity(quantity)
{
	alert(quantity);
	var quantityitem = quantity.split("-");
	var items = document.getElementById("quantityItems").value;
	var item = "";
	var splititem = "";
	if(items == "")
		{
		document.getElementById("quantityItems").value = quantity;
		}
	else
		{
			item = items.split(",");
			for(i = 0;i<item.length;i++)
				{
					splititem = item[i].split("-");
					if(splititem[0]==quantityitem[0])
						{
							
						}
				}
			
			document.getElementById("quantityItems").value = document.getElementById("quantityItems").value+","+quantity;
		}
	}
</script>
<style>
.car{
float: right;
    /* position: absolute; */
    margin: 4px -19px;
    z-index: -2222;
    color: #fff;
    font-weight: 600;
    }
 
.fade.in {
    opacity: 1;
    background: rgba(0,0,0,0.4);
}
.modal-dialog {
    width: 600px;
    margin: 135px auto;
}
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
    .left7{
    text-align: center;
}
.left7 a{
    text-align: center;
    padding: 11px;
    margin: 0px 0px;
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
.get-1 {
    border-radius: 3px;
    margin-bottom: 9px;
     border: 1px solid #ccc;
    padding: 6px 12px;
}
.get-1:hover{
    border-radius: 3px;
    margin-bottom: 9px;
     border: 1px solid #ccc;
    padding: 6px 12px;
    box-shadow: 0 0 9px #ccc;
}
.get-4{
    font-size:15px;
    font-weight: 600;
    color: #9a2220;
    }
    .get-5{
       font-size: 15px;
       color: #000000;
    }
    .get-6{
     line-height:15px;
     }
    .get-7{
      padding: 0 0;
      }
  .get-8{
     font-size: 22px;
    color: #4491d4;
    margin: 10px 0;
    /* font-weight: 600; */
    padding: 2px 0px;
    }
    .get-9{
    line-height:0px;
} 
.get-11{
    font-size: 11px;
    color: #4c87b9;
    font-weight: 600;
    margin: 0 11px;
    }
</style>
</head>
<body>
	<div class="se-pre-con"></div>
	    <div id="page-content">
		<jsp:include page="./homeTop.jsp"></jsp:include>
        <%
        String vechicleT="",manufacturer="",VeState="",Vcategory="",Page="",requesterid="",spusertype="";
        BusinessOwnerRegister bor=new BusinessOwnerRegister();
        try
        {
        	if(request.getParameter("page")!=null)
        	{
        		Page=request.getParameter("page");
        	}
			
			if(request.getParameter("vechicleT")!=null)
			{
				vechicleT=request.getParameter("vechicleT");
			}
			if(request.getParameter("manufacturer")!=null)
			{
				manufacturer=request.getParameter("manufacturer");
			}
			if(request.getParameter("VeState")!=null)
			{
				VeState=request.getParameter("VeState");
			}
			if(request.getParameter("Vcategory")!=null)
			{
				Vcategory=request.getParameter("Vcategory");
			}
			if(request.getParameter("page")!=null)
			{
				Page=request.getParameter("page");
			}
			if(session.getAttribute("user")!=null)
			{
				requesterid=session.getAttribute("user").toString();
			}
			if(session.getAttribute("spusertype")!=null)
			{
				spusertype=session.getAttribute("spusertype").toString();
			}

			bor=(BusinessOwnerRegister)request.getAttribute("businessOwnerDetails");
        }catch(Exception e)
        {
        	e.printStackTrace();
        }
        %>
        <div class="container">
                  
                      <!--======== new search ========== -->
                      <div class="col-md-12">
                      <!-- <div class="col-md-3 re0" id="re1">
                         <div class="side">
                            <h6>Advance Search</h6>
                                 <div class="col-md-12">
                                 <div class="form-group">
						     	 <select id="states" class="form-control" name="state">
							     <option value="alabama">Vehicle Type</option>
								 <option value="unknown">Two Wheeler</option>
								 <option value="alabama">Four Wheeler</option>
							     </select>
                                 </div>
                                 </div> 
                                 
                                 <div class="col-md-12">
                                 <div class="form-group">
						     	 <select id="states" class="form-control" name="state">
							     <option value="alabama">Vehicle Brand</option>
								 <option value="unknown">Hero</option>
								 <option value="alabama">Tvs</option>
							     </select>
                                 </div>
                                 </div> 
                                 
                                 <div class="col-md-12">
                                 <div class="form-group">
						     	 <select id="states" class="form-control" name="state">
							     <option value="alabama">State</option>
								 <option value="unknown">Hyderabad</option>
								 <option value="alabama">Ongole</option>
							     </select>
                                 </div>
                                 </div> 
                                 
                                  <div class="col-md-12">
                                 <div class="form-group">
						     	 <select id="states" class="form-control" name="state">
							     <option value="alabama">Color Type</option>
								 <option value="unknown">Red</option>
								 <option value="alabama">Blue</option>
							     </select>
                                 </div>
                                 </div> 
                                 
                                  <div class="col-md-12">
                                 <div class="form-group">
						     	 <select id="states" class="form-control" name="state">
							     <option value="alabama">Category</option>
								 <option value="unknown">Category</option>
								 <option value="alabama">1</option>
							     </select>
                                 </div>
                                 </div> 
                         </div>
                      </div> -->
                      
                                 <!--======== new search ========== -->
                      <div class="col-md-12 get1">
                      <div class="row">
             
                      <div class="col-md-4 grt1">
                       <h6 class="re">
                          <form action="./SearchDistributor" method="post">
        				  <input type="hidden" name="page" value="<%=Page%>">
        				  <input type="hidden" name="vechicleT" value="<%=vechicleT%>">
        				  <input type="hidden" name="manufacturer" value="<%=manufacturer%>">
        				  <input type="hidden" name="VeState" value="<%=VeState%>">
        				  <input type="hidden" name="Vcategory" value="<%=Vcategory%>">
        				  <input type="hidden" name="username" value="<%=bor.getEMAIL_ID()%>">
        				  <input type="hidden" name="boid" value="<%=bor.getSEQUENTIAL_NO()%>">
        				  <button type="submit" class="btn btn-link" id="get3">Go to Distributors Page</button>
        				  </form>
                       </h6>
                      </div>
                      
                       <div class="col-md-6 grt1">
                       <p class="ty">Distributors Catalog</p>
                       </div>
                       
                      <!--  <div class="col-md-2 grt1" >  id="grt9"
                       <button type="button" class="btn btn-danger" id="one1"> Place Order</button>
                       </div> -->
                       </div>
                       
                      </div>
                          <div class="clearfix"></div>
                       </div>
                      <div class="clearfix"></div>
                       
                      <!--======== end new search ========== -->
                         
                      <div class="col-md-12 re5" style="padding: 0 5px;">
                      <!--======== end section ===========-->
                      
                      <div class="col-lg-12">
                       <div class="col-md-12 left">
                       
                        <div class="row">
                        <div class="col-md-10"> 
                        <div class="row">
                        <div class="col-md-12 re6">
                        <span>Distributor Details</span>
                        </div>
                        </div>
                        
                        <div class="row">
                        <div class="col-md-6 ty4">
                        <p class="ty3"><span class="ty1">Business name :</span> <span class="ty2"><%=bor.getBUSINESS_NAME() %></span></p>
                        </div>
                        
                        <div class="col-md-6 ty4">
                        <p class="ty3"><span class="ty1">Email ID :</span> <span class="ty2"><%=bor.getEMAIL_ID() %></span></p>
                        </div>
                        </div>
                        
                        <div class="row">
                          <div class="col-md-12 ty4">
                          <p class="ty3"><span class="ty1">Phone Number :</span> <span class="ty2"><%=bor.getMOBILE_NO()%></span></p>
                          </div>
                        </div>
                        
                        <div class="row">
                        <div class="col-md-12 ty4">
                        <p class="ty3"><span class="ty1">Address Details :</span> <span class="ty21">
                       <%=bor.getADDRESS() %>,
                        <%=bor.getB_CITY() %>,
                        <%=bor.getDISTRICT()%>,
                        <%=bor.getSTATE()%>
                        </span></p>
                        </div>
                        
                        </div>
                        </div>
                        
                        <div class="col-md-2 left7">
                        <%if(bor.getPHOTO()!=null)
                                { %>
                                <img src="data:image/png;base64,<%=bor.getPHOTO()%>">
                                <%}else{ %>
                                <img src="images/ServiceImage.png" class="img-respance">
                                <%} %>
                        </div>
                        
                        </div>
                        </div>
                        </div>
                        <div class="clearfix"></div>
                      <!--======== end section ===========-->
                      
                          <!--============= filter search ===========-->
                          <!-- <div class="row">
                          <div class="col-md-12 get1">
                           <p class="get2">Filter</p>
                          </div>
                          </div> -->
                          
                          <div class="row">
                          <form action="./GetDistributorSpares" method="post">
                             <div class="col-md-10">
                                <div class="col-md-4">
                                 <div class="form-group">
							     <label for="states">Category :</label>
							     <input  type="hidden" name="username" value="<%=bor.getEMAIL_ID() %>">
							     <select name="Vcategory" class="form-control" onchange="getSparesBrands(this.value)">
									<option value="SPAREPARTS">Category</option>
							     <%
							    	ArrayList<String> spal=new ArrayList<String>();
							     	String [] itemQuantity,itemQuantity1;
							     	String item="",quantity="";
							     	Map<String,String> itemsQuantity=new HashMap<String,String>();
							     	Set<String> items=new HashSet<String>();
								     	spal = new GetSparePartsDetails().getSparepartsFromCart(bor.getEMAIL_ID(), requesterid);
								     	for (String temp : spal) {
								     		itemQuantity = temp.split(",");
								     		itemQuantity1 = itemQuantity[0].split("-");
								     		items.add(itemQuantity1[0]);
								     		itemsQuantity.put(itemQuantity1[0], itemQuantity1[1]);
										}
								     	session.setAttribute("itemsList",items);
										session.setAttribute("itemsQuantity",itemsQuantity);
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
							     <label for="states">Brand :</label>
							     <div id="SBrands">
							     <select name="brand" id="brand" class="form-control">
							     <option value="">All</option>
							     </select>
							     </div>
                                 </div>
                                 </div>
                                 
                                 <div class="col-md-4">
                                 <div class="form-group">
							     <label for="states">Manufactured By :</label>
								 <input type="text" name="manufacturer" id="manufacturer" class="form-control" placeholder="HERO, HONDA etc">
                                 </div>
                                 </div>
                                 
                                 </div>
                                 
                                 <div class="col-md-2">
                                 <div class="col-md-12 get1">
                                 <div class="col-md-12" style="margin-top:3px;">
                                 <div class="form-group">
							     <label for="states" style="color:#fff;"></label>
						     	 <button type="submit" class="btn btn-danger btn-block">Search</button>
                                 </div>
                                 </div> 
                                 </div>
                                    
                                 </div> 
                                  </form>
                                 </div>
                                 <div class="clearfix"></div>
                                 
                                 <div class="row">
                                 <div class="col-md-12 get1"> 
                                 <div class="col-md-12 get1">
                                 <div class="col-md-12">
                                 <div class="form-group">
                                 <form action="./ReviewOrder" method="post">
                                 <div class="col-md-12 get1">
                                 <div class="col-md-9 get1"></div>
                                 <div class="col-md-1 get1">
                                 <span id="selecteditemsincart" style="font-size: 24px;  color: #f94141; float: right;"><i class="fa fa-shopping-cart" aria-hidden="true"><%=spal.size()%></i></span>
                                 <span class="car" id="itemsTotal"></span>
                                 <input type="hidden" class="form-control" name="distributorid" id="distributorid" value="<%=bor.getEMAIL_ID() %>">
						     	 </div>
						     	 
						     	 <div class="col-md-2">
						     	 <%if(requesterid!=""){ %>
						     	 <button type="submit" class="btn btn-danger btn-block" style="line-height: 15px;"> Review Order</button>
						     	 <%}else { %>
						     	 <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal0" style="line-height: 15px;"> Review Order</button>
						     	 <%} %>
						     	 </div>
						     	 </div>
						     	 
						     	 </form>
                                 </div>
                                 </div> 
                                 </div>
			                    
			                     </div>
			                     </div>
                                  <div class="clearfix"></div>
                        <!--============ end filter search ========= -->
                        
                        <!--=================== new popup ===================--> 
                     
						        <!-- <div class="modal fade" id="myModal" role="dialog">
						        <div class="modal-dialog modal-sm">
						        <div class="modal-content">
						        <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal">&times;</button>
						        <h4 class="modal-title">Modal Header</h4>
						        </div>
						        
						        <div class="modal-body">
						        
						          <form action="#" method="post">
						          <p>This is a small modal.</p>
						          </form> 
						        
						        </div>
						        
						        <div class="modal-footer">
						        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						        </div>
						        </div>
						        </div>
						        </div> -->
                          
                       <!--======================= end popup ==================== -->
                        
                      <!--================== new table section ================ -->
                       <div class="col-lg-12">
                       <%
                       int numofpages=0,noofrecords=0,currentPage=0,previous=0,next=0;
                       ArrayList<SpareParts> al=new ArrayList<SpareParts>();
                       
                       try
                       {
                       	al=(ArrayList<SpareParts>)request.getAttribute("sparepartsDetails");
                       numofpages = Integer.parseInt(request.getAttribute("numofpages").toString());
                       noofrecords = Integer.parseInt(request.getAttribute("noofrecords").toString());
                       currentPage = Integer.parseInt(request.getAttribute("currentPage").toString());
                       	for(int i=0;i<al.size();i++)
                       	{
                       		SpareParts sp = new SpareParts();
                       		sp=al.get(i);
                       	
                       %>
                       <div class="col-md-12 get-1">
                          <div class="get-3">
                           <div class="col-md-10 get-7">
                               <div class="col-md-10 get-7">
                               <div class="g">
                               <p class="get-8"><%=sp.getSP_NAME()%></p>
                               </div>
                               </div>
                              
                               <div class="col-md-2">
                               <div class="get-2">
                               <span class="get-11">ADD TO CART</span>
	                               <%
	                               if(items.contains(String.valueOf(sp.getID())))
	                            	   {
	                            	   %>
	                            	   <input type="checkbox" name="vehicle2" value="<%=sp.getID()%>" onclick="cartItems(this.value)" checked="checked" style="width: 20px; float: right; height: 20px;">
	                            	   <% }
	                            	   else
	                            	   {
	                            	   %>
                            	   		<input type="checkbox" name="vehicle2" value="<%=sp.getID()%>" onclick="cartItems(this.value)" style="width: 20px; float: right; height: 20px;">
                            	   <% }%>
                               
                               </div>
                               </div>
                              
                               <div class="col-md-4 get-7">
                               <p class="get-9">
                               <span class="get-4">Brand :</span> <span class="get-5"><%=sp.getVEHICLE_BRAND() %></span>
                               </p>
                               </div>
                              
                              <div class="col-md-8 get-7">
                               <p class="get-9">
                               <span class="get-4">Fits for Models :</span> <span class="get-5"><%=sp.getVEHICLE_MODEL() %></span>
                               </p>
                              </div>
                              
                              <div class="col-md-4 get-7">
                               
                               <p class="get-6">
                                 <span class="get-4">Category :</span> <span class="get-5"><%=sp.getCATEGORY() %></span>
                               </p>
                               
                                <p class="get-6">
                                 <span class="get-4">SubCategory :</span> <span class="get-5"><%=sp.getSUB_CATEGORY() %></span>
                               </p>
                               
                                <p class="get-6">
                                 <span class="get-4">Company :</span> <span class="get-5"><%=sp.getMANUFACTURE_COMPANY_NAME() %></span>
                               </p>
                               
                               <p class="get-6">
                                 <span class="get-4">Delivery methed :</span> <span class="get-5"><%=sp.getDELEVERY_METHOD()%></span>
                               </p>
                               
                              </div>
                              
                              
                              <div class="col-md-4 get-7">
                              
                               <p class="get-6">
                                 <span class="get-4">Part No :</span> <span class="get-5"><%=sp.getPARTNO()%></span>
                               </p>
                               
                               <p class="get-6">
                                 <span class="get-4">Warranty :</span> <span class="get-5"><%=sp.getWARRANTY()%></span>
                               </p>
                               
                               <p class="get-6">
                                 <span class="get-4">SKUID :</span> <span class="get-5"><%=sp.getSKU() %></span>
                               </p>
                               
                               <%-- <p class="get-6">
                                 <span class="get-4">Model year :</span> <span class="get-5"><%=sp.getMODEL_YEAR() %></span>
                               </p> --%>
                               
                              </div>
                              
                              
                              <div class="col-md-4 get-7">
                              <p class="get-6">
                                 <span class="get-4">Min Order Qty :</span> <span class="get-5">10 NOS</span>
                               </p>
                               <%if(requesterid!=""){ 
                               if(spusertype.equals("R"))
                               {
                               %>
                               <p class="get-6">
                                 <span class="get-4">Price :</span>
                                  <span class="get-5"><%=sp.getPRICE() %></span>
                               </p>
                               
                               <p class="get-6">
                                 <span class="get-4">Discount :</span> <span class="get-5"><%=sp.getDISCOUNT()%>%</span>
                               </p>
                              
                                 <%-- <p class="get-6">
                                 <span class="get-4">Vehicle Type :</span> <span class="get-5">
                                 <%
                                 if(sp.getVEHICLE_TYPE().equals("2,"))
                                 {out.println("2 Wheeler");}
                                 else
                                	 if(sp.getVEHICLE_TYPE().equals("4,"))
                                     {out.println("4 Wheeler");}
                                     else	 
                                     {out.println("2 & 4 Wheeler");}
                                 %></span>
                               </p> --%>
                               
                                
                               <p class="get-6">
                                 <span class="get-4">Quantity :</span> <span>  
                                 <input type="text" name="quantity" maxlength="4" pattern="\d{4}" style="width:80px; display: table-row-group !important;
                                     height: 25px;" class="form-control" placeholder="Quantity" 
                                     value="<%=itemsQuantity.get(String.valueOf(sp.getID())) != null ? itemsQuantity.get(String.valueOf(sp.getID())) : 0%>" 
                                     onkeyup="storeQuantity(<%=sp.getID()%>,<%=sp.getPRICE() %>,this.value)">
                                      <%-- onchange="storeQuantity(<%=sp.getID()%>+'-'+this.value)" --%>
                                     </span>
                               </p>
                               <p class="get-6">
                                 <span class="get-4">Total Price :</span> 
                                 <span id="<%=sp.getID()%>">  
                                 0
                                 </span>
                               </p>
                               <%}
                               else
                               {
                            	   out.println("Price List Displays to Retailer....");
                               }
                               }else{ %>
                                  <span class="get-5"><a href="" data-toggle="modal" data-target="#myModal0">Please Login for Price & Discount Details</a></span>
                                  <%} %>
                               
                              </div>
                              
                              </div>
                              
                              <div class="col-md-2 left7">
                                <%if(sp.getIMAGE()!=null)
                                { %>
                                <img src="data:image/png;base64,<%=sp.getIMAGE()%>">
                                <%}else{ %>
                                <img src="./images/ServiceImage.png" class="img-respance">
                                <%} %>
                                <!-- <a href="#"><img src="images/slide.png" class="img-respance"></a> -->
                              </div>
                          </div>  
                       </div>
                       <%}
                        }catch(Exception e)
	                       {
	                       	e.printStackTrace();
	                       }
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
							<form action="./GetDistributorSpares" method="post">
						  <input type="hidden" name="page" value="<%=i%>">
        				  <input type="hidden" name="vechicleT" value="<%=vechicleT%>">
        				  <input type="hidden" name="manufacturer" value="<%=manufacturer%>">
        				  <input type="hidden" name="VeState" value="<%=VeState%>">
        				  <input type="hidden" name="Vcategory" value="<%=Vcategory%>">
        				  <input type="hidden" name="username" value="<%=bor.getEMAIL_ID()%>">
        				  <input type="hidden" name="boid" value="<%=bor.getSEQUENTIAL_NO()%>">
	        				  <button type="submit" class="btn btn-link"><%=i%></button>
	        				</form>
        					</td>
        					<%}} %>
							</tr>
						  </table>
						  </nav>
                        
        
                      
                             </div> 
                             
                             
                             <!--=============== end new table section =========== -->          
                      
                      </div>
                      
                      </div>
                       <div class="clearfix"></div>
                   <!--======== end new search ========== -->
                   
                   <!-- =========== popup ==================-->
                               <form action="./GetDistributorSpares" method="post">
                               <div class="modal fade" id="myModal0" role="dialog">
							    <div class="modal-dialog modal-sm" style="padding:4% 7%;">
							      <div class="modal-content">
							        <div class="modal-header">
							          <button type="button" class="close" data-dismiss="modal">&times;</button>
							          <h4 class="modal-title">Please Login here</h4>
							        </div>
							       <input type="hidden" name="page" value="<%=currentPage%>">
		        				   <input type="hidden" name="vechicleT" value="<%=vechicleT%>">
		        				   <input type="hidden" name="manufacturer" value="<%=manufacturer%>">
		        				   <input type="hidden" name="VeState" value="<%=VeState%>">
		        				   <input type="hidden" name="Vcategory" value="<%=Vcategory%>">
		        				   <input type="hidden" name="username" value="<%=bor.getEMAIL_ID()%>">
							       <input type="hidden" name="page" id="page" value="<%=currentPage%>">
							        <div class="modal-body">
							            <div class="form-group col-md-12 col-sm-12">
							            <label for="name">User Name :</label>
							            <input type="text" class="form-control input-sm" id="userid" name="userid" required placeholder="user Name">
							            </div>
                                        
                                        
                                        <div class="form-group col-md-12 col-sm-12">
							            <label for="name">Password :</label>
							            <input type="password" class="form-control input-sm" id="password" name="password" required placeholder="Enter password">
							            </div>
							            
							             <div class="col-md-3 col-sm-3"> </div>
							            
                                         <div class="col-md-5 col-sm-5">
								         <div class="form-group" >
										 <input type="submit" class="btn btn-primary btn-block" value="Submit"/>
								         </div>
							             </div>
							             
							              <div class="col-md-3 col-sm-3"> </div>

							        </div>
							        
							        <div class="modal-footer">
							          <!-- <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
							        </div> 
							      </div>
							    </div>
							  </div>
                           </form>
                           <!--============== end popup ============== -->
                   
                   
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