
<%@ page language="java" import="com.vaahanmitra.dao.*,com.vaahanmitra.model.*,java.util.*,com.vaahanmitra.service.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VaahanMitra</title>
<link href="assets/images/cg1.png" type="icon/img" rel="icon">
</head>
<body>
<%
String spBrand=request.getParameter("spBrand");
GetSparePartsDetails spdetails = new GetSparePartsDetails();
ArrayList<SpareParts> spbrand = spdetails.getVehicleBrand(spBrand);
Iterator it=spbrand.iterator();
%>
<select class="form-control" name="vehicleBrand" id="vehicleBrand" onchange="getVehicleModel(this.value)" required>
<option value="SELECT" style="display:none;">Vehicle Brand</option>
<option value="All">All</option>
<%
while(it.hasNext()){
	SpareParts bean=(SpareParts)it.next();
	%>
	<option value="<%=bean.getVEHICLE_BRAND()%>"><%=bean.getVEHICLE_BRAND()%></option>
<% 	
}
%>
</select>
</body>
</html>