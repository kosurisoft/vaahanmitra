<%@ page language="java" import="java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String itemNo = request.getParameter("itemNo");
	
	Set<String> items=new HashSet<String>(); 
	Set<String> items1=new HashSet<String>(); 
	if(session.getAttribute("itemsList")!=null)
	{
		items=(Set<String>)session.getAttribute("itemsList");
		items1=items;
		if(items.contains(itemNo))
		{
			items1.remove(itemNo);
		}
		else
		{
			items1.add(itemNo);
		}
		session.setAttribute("itemsList",items1);
	}
	else
	{
		items1.add(itemNo);
		session.setAttribute("itemsList",items1);
	}
	/*  Iterator<String> it= items1.iterator();
	 while(it.hasNext())
	 {
		 System.out.print(it.next());
	 }
	System.out.println("Size is "+items1.size()); */
	out.println("<i class='fa fa-shopping-cart' aria-hidden='true'>"+items1.size()+"</i>");
%>
</body>
</html>