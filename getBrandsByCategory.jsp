<%@ page language="java" import="java.util.*,com.vaahanmitra.service.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String category ="";
ArrayList<String> al=new ArrayList<String>();
try
{
	if(request.getParameter("category")!=null)
	{
		category=request.getParameter("category");
		System.out.println("In page"+category);
		al=new VehicleService().getSparepartsBrandsByCategory(category);
	}
	
}catch(Exception e)
{
	
}
%>
<!-- <select name="brand" id="brand" class="form-control"> -->
<select name="Vebrand" id="Vebrand" class="form-control">
<option value="">All</option>
<%for(int i=0;i<al.size();i++){ %>
<option><%=al.get(i)%></option>
<%} %>
</select>
</body>
</html>