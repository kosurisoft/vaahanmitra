<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<jsp:include page="./AdminMenu.jsp" />
<jsp:include page="./Admin-right-side.jsp" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Add Car</title>
<link href="assets/images/cg1.png" type="icon/img" rel="icon">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="apple-touch-icon.png">
<!-- Place favicon.ico in the root directory -->
<link rel="stylesheet" href="css/vendor.css">
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
			<article class="content responsive-tables-page" style="background-color:#fff"> <section
				class="section">
			<div class="row">
				<div class="col-md-12">
					<div class="card" style="background: #fff; box-shadow: 0px 0px 2px 1px rgba(0,0,0,0.15);border-bottom: 3px solid #a3b745;">
						<div class="card-block" style="border-bottom: 3px solid #a3b745;">
							<section class="example">
							<div class="table-responsive">
								<table class="table table-striped table-bordered table-hover">
									<form action="">
										<thead>
											<tr>
												<th colspan="2"
													style="text-align: center; background-color: #523f6d; color: #fff;">CAR
													BRANDS</th>
											</tr>
										</thead>
									<tbody>
										<tr>
											<td>Car Brand</td>
											<td>
												<div class="form-group">
													<select class="form-control form-control-sm" required>
														<option value="">SELECT BRAND</option>
														<option value="audi">AUDI</option>
														<option value="bmw">BMW</option>
														<option value="honda">HONDA</option>
														<option value="tata">TATA</option>
														<option value="toyota">TOYOTA</option>
														<option value="volkswagen">VOLKSWAGEN</option>
													</select>
												</div>
											</td>
										</tr>
										<tr>
											<td colspan="2" style="text-align: center;">
												<button
													style="background-color: #a3b745; border: 1px solid #a3b745;"
													class="btn btn-primary">Search</button>
											</td>
										</tr>
									</tbody>
									</form>
								</table>
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