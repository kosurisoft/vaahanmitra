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
<%@ page language="java" import="java.util.*,com.vaahanmitra.service.*,com.vaahanmitra.model.*" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	<div class="main-wrapper">
		<div class="app" id="app">
			<header class="header">
			<div class="header-block header-block-collapse hidden-lg-up">
				<button class="collapse-btn" id="sidebar-collapse-btn">
					<i class="fa fa-bars"></i>
					<!-- <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span><i class="fa fa-bars"></i>
                        </button>
                        <a class="navbar-brand" href="index.html">
                           <h2 style="color:#fff;margin-top:0px;font-weight:600;">Vahana<span style="margin-left:2px; color:#fec107;">Mitra</span></h2>
                        </a>
                        
                    </div> -->
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
			<article class="content responsive-tables-page" style="background-color:#fff"> 
			<section class="section">
			<div class="row">
				<div class="col-md-12">
					<div class="card"
						style="background: #fff; box-shadow: 0px 0px 2px 1px rgba(0, 0, 0, 0.15); border-bottom: 3px solid #a3b745;">
						<div class="card-block" style="border-bottom: 3px solid #a3b745;">
							<section class="example">
							<div class="table-responsive">
							
							<form action="./AddCategory" method="post">
								<div class="col-md-12" style="padding:0 0px;">
								<p>Spare Parts</p>
								<div class="col-md-12 row">
								<%try{	if(request.getAttribute("message")!=null){	out.println(request.getAttribute("message"));}}	catch(Exception e){} %>
								</div>
								 <div class="col-md-4">
								     <div class="form-group">
							     <label for="states">Category :</label>
									<input type="text" name="category" class="form-control" placeholder="Enter Category" required>
									</div>
									</div>
									
									
									<div class="col-md-4">
									 <div class="form-group">
							     <label for="states">Subcategory :</label>
									<input type="text" name="subcategory" class="form-control" placeholder="Enter Subcategory" required>
									</div>
									</div>
									
									<div class="col-md-2">
									 <div class="form-group">
							         <label for="states" style="color:#fff;">Sta</label>
									<button type="submit" class="btn btn-info btn-block" style="line-height: 23px; border-radius: 4px;">Save</button>
									</div>
									</div>
									 
									</div>
									</form>
									
							</div>
							</section>
							<table class="table table-striped table-bordered table-hover">
									<tr>
										<th style="text-align: center">Category</th>
										<th style="text-align: center">Subcategory</th>
									</tr>
									<%
										ArrayList<Category> alcat=new ArrayList<Category>();
										alcat=new GetSparePartsDetails().getCategories();
										
										for(int i=0;i<alcat.size();i++)
										{
										Category cat=alcat.get(i);
										%>
										<tr>
										<th style="text-align: center"><%=cat.getCATEGORY() %></th>
										<th style="text-align: center"><%=cat.getSUBCATEGORY() %></th>
										</tr>
										<%}
									%>
									
								</table>
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
			populateCountries("country", "state");
		</script>
	<script language="javascript">
		populateBrands("brand", "model");
 	</script>
	<script src="js/vendor.js"></script>
	<script src="js/app.js"></script>
</body>

</html>