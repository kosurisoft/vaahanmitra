
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
String vehicletype="";
vehicletype=request.getParameter("vehicleType");

ArrayList<Brand> brandsal = new VehicleService().getBrandsByVehicleType(vehicletype);

for(int i=0;i<brandsal.size();i++)
{
	Brand b=brandsal.get(i);
	%>
	<input class="single-checkbox" type="checkbox" name="choice" value="<%=b.getBRAND_NAME() %>" id="<%=b.getBRAND_NAME() %>" onclick="enable_text(this.checked)"><%=b.getBRAND_NAME() %>&nbsp;&nbsp;&nbsp;
<%}
%>

</body>
</html>