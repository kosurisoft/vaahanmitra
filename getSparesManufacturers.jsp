
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
String vehicleType="",manufacturer="";
GetSparePartsDetails spdetails = new GetSparePartsDetails();
Set<String> manufacturers=new HashSet<String>();
try
{
	if(request.getParameter("vehicleType")!=null)
	{
		if(request.getParameter("vehicleType")!="")
		{
			vehicleType=request.getParameter("vehicleType");
			
		}
	}
	if(request.getParameter("manufacturer")!=null)
	{
		if(request.getParameter("manufacturer")!="")
		{
			manufacturer=request.getParameter("manufacturer");
		}
	}
	manufacturers=new GetSparePartsDetails().getSparesManufacturers(vehicleType);
}catch(Exception e)
{
	e.printStackTrace();
}
String manu="";
Iterator it = manufacturers.iterator();
%>
<select class="form-control" name="manufacturer" id="manufacturer">
<option value="SELECT" style="display:none;">Manufacturer</option>
<option value="All">All</option>
<%
while(it.hasNext()){
	manu=it.next().toString();
	if(manu.equals(manufacturer))
	{
	%>
	<option value="<%=manu%>" selected="selected"><%=manu%></option>
	<% 	}
	else
	{
		%>
		<option value="<%=manu%>"><%=manu%></option>
	<% 		
	}
	
}
%>
</select>
</body>
</html>