<%@ page import="java.sql.*" import="databaseconnection.*" errorPage="" %>

<%
String username=request.getParameter("name");

String password=request.getParameter("pass");

String a="chairperson";
String b="chairperson";

	
	if((a.equals(username)) && (b.equals(password)))
	{
	response.sendRedirect("adminpage.jsp");
	}
	else
	{
	out.println("enter correct username and password");
	}



%>
