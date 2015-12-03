<%@ page import="java.sql.*" import="databaseconnection.*" errorPage="" %>

<%
String username=request.getParameter("name");

String password=request.getParameter("pass");

String a="admin";
String b="admin";

	
	if((a.equals(username)) && (b.equals(password)))
	{
	response.sendRedirect("ad.jsp");
	}
	else
	{
	out.println("enter correct username and password");
	}



%>
