<%@ page language="java" import="com.vaahanmitra.model.*,java.util.*,com.vaahanmitra.service.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VaahanMitra</title>
</head>
<body>
<%
String brand = request.getParameter("brand");
String model = request.getParameter("model");
GetNewCarDetails usedCar=new GetNewCarDetails();
Set<AddCar> carModel=usedCar.getNewCarVariantName(brand,model);
Iterator it= carModel.iterator();
%>
<select name="variantName" id="variantName" class="form-control form-control-sm" required>
<option value="">SELECT VARIANT</option>
<%
while(it.hasNext()){
	AddCar carM=(AddCar)it.next();
%>
	<option value="<%=carM.getVARIANT_NAME()%>"><%=carM.getVARIANT_NAME()%></option>
<% 
}
%>
</select>
</body>
</html>