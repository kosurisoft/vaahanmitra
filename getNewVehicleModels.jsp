<%@ page language="java" import="com.vaahanmitra.dao.*,com.vaahanmitra.model.*,java.util.*,com.vaahanmitra.service.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VaahanMitra</title>
<link href="assets/images/cg1.png" type="icon/img" rel="icon">
</head>
<body>
<%
String vBrand="";
if(request.getParameter("vBrand")!=null)
{
	vBrand = request.getParameter("vBrand");
}
String vType=request.getParameter("vType");
ArrayList<AddBike> newBikeBrand = new ArrayList<AddBike>();
if(vType.equals("N"))
{
	newBikeBrand = new GetNewBikeDetails().getNewBikeBrand();
}
else
{
	System.out.println("Old Bikes");
}

%>
<select name="vehicleBrand" id="vehicleBrand"  class="form-control underlined" onchange="getVehicleModels(this.value)">
<option value="SELECT" style="display:none;">Vehicle Brand</option>
<%
for(int i=0;i<newBikeBrand.size();i++)
{
	AddBike bike=newBikeBrand.get(i);
	if(bike.getBIKE_BRAND().equals(vBrand))
	{%>
	<option selected="selected"><%=bike.getBIKE_BRAND()%></option>
	<% }else
	{
	%>
	<option><%=bike.getBIKE_BRAND()%></option>
	<%}
}
%>
</select>
</body>
</html>