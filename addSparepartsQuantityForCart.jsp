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
	String itemQuantity = request.getParameter("quantity");
System.out.println(itemQuantity+"-----ItemQuantity");
	String[] items=itemQuantity.split("-");
	Map<String,String> itemQuantityList = new HashMap<String,String>();
	//Map<String,String> itemQuantityList1 = new HashMap<String,String>();
	if(session.getAttribute("itemsQuantity")!=null)
	{
		itemQuantityList=(Map<String,String>)session.getAttribute("itemsQuantity");
		//itemQuantityList1=itemQuantityList;
		Set< Map.Entry< String,String> > st = itemQuantityList.entrySet();    
	       /* for (Map.Entry< String,String> me:st) 
	       { 
	    	  if(me.getKey().equals(items[0]))
	    	  {
	    		  itemQuantityList1.remove(me.getKey());
	    	  }
	       }  */
		itemQuantityList.put(items[0], items[1]);
	      /*  System.out.println(items[0]+"-----"+items[1]); */
		session.setAttribute("itemsQuantity",itemQuantityList);
	}
	else
	{
		itemQuantityList.put(items[0], items[1]);
		session.setAttribute("itemsQuantity",itemQuantityList);
	}
	/* Set< Map.Entry< String,String> > st = itemQuantityList.entrySet();
	 for (Map.Entry< String,String> me:st) 
     { 
  	  System.out.println(me.getKey()+":");
  		System.out.println(me.getValue()+"\n	");
     }  */
	
	
%>
</body>
</html>