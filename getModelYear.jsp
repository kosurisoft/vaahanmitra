<%@ page language="java" import="com.vaahanmitra.dao.*,com.vaahanmitra.model.*,java.util.*,com.vaahanmitra.service.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VaahanMitra</title>
</head>
<body>
<%
SpareParts spp=new SpareParts();

spp.setVEHICLE_TYPE(request.getParameter("vtype"));
spp.setVEHICLE_BRAND(request.getParameter("vbrand"));
spp.setVEHICLE_MODEL(request.getParameter("model"));

GetSparePartsDetails sp = new GetSparePartsDetails();
ArrayList<String> al = sp.getModelYear(spp);
%>
<select name="modelYear" id="modelYear">
<option value="SELECT" style="display:none;">SELECT MODEL YEAR</option>
<option  value="All">All</option>
<%
for(int i=0;i<al.size();i++){
	%>
	<option><%=al.get(i)%></option>
<% 
}
%>
</select>
</body>
</html>