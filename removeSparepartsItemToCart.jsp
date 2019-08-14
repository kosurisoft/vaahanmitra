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
	if(session.getAttribute("RemoveditemsList")!=null)
	{
		items=(Set<String>)session.getAttribute("RemoveditemsList");
		items1=items;
		if(items.contains(itemNo))
		{
			items1.remove(itemNo);
		}
		else
		{
			items1.add(itemNo);
		}
		session.setAttribute("RemoveditemsList",items1);
	}
	else
	{
		items1.add(itemNo);
		session.setAttribute("RemoveditemsList",items1);
	}
	 Iterator<String> it= items1.iterator();
	 while(it.hasNext())
	 {
		 System.out.print("Removed Item : "+it.next());
	 }
%>
</body>
</html>