<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<html>
<head>
<title> Scientific Workflow</title>

</head>

<body>

<%

String name=null,email=null;


String a=request.getParameter("pid");
session.setAttribute("aa",a);
String b=request.getParameter("comment");

String c=request.getParameter("rate");


int aaa=(int) (Math.random() * 100);
int bbb=aaa*5;


PreparedStatement ps = null;

	ResultSet rs = null;
	
	
	PreparedStatement ps1 = null;

	ResultSet rs1 = null;
	Statement st1=null;
	
	try
	{
		
		Connection con = databasecon.getconnection();

		ps = con.prepareStatement("insert into comments(pid,comments,rating) values(?,?,?)");
		ps.setString(1,a); 
ps.setString(2,b);
ps.setString(3,c);
ps.executeUpdate();
 response.sendRedirect("r_update.jsp?success");
}
catch(Exception e1)
{    
out.println(e1.getMessage());
}

	
	
	
	
	
	
	
	
	
	
%>
</body>
</html>
