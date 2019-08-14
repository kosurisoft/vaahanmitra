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
String category="",gst="0";
category=request.getParameter("category");
ArrayList<String> al= new ArrayList<String>();
al = new GetSparePartsDetails().getSubcategories( category);
gst= new GetSparePartsDetails().getGst(category);
%>
<select name="subcategory" class="form-control">
<%
for(int i=0;i<al.size();i++)
{%>
	<option><%=al.get(i) %></option>
<%}
%>
</select>
<input type="hidden" name="catgst" id="catgst" value="<%=gst%>">
</body>
</html>