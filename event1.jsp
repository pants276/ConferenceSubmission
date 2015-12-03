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


String a=request.getParameter("nevent");
String b=request.getParameter("desc");

String c=request.getParameter("stime");

String d=request.getParameter("etime");
String e=request.getParameter("date");
String f=request.getParameter("croom");
String g=request.getParameter("address");
String h="waiting";




PreparedStatement ps = null;

	ResultSet rs = null;
	
	
	PreparedStatement ps1 = null;

	ResultSet rs1 = null;
	Statement st1=null;
	
	
	try
	{
		
		Connection con = databasecon.getconnection();

		ps = con.prepareStatement("insert into event(event_name,description,stime,etime,date,conference_room,address,status) values(?,?,?,?,?,?,?,?)");
		ps.setString(1,a); 
ps.setString(2,b);
ps.setString(3,c);
ps.setString(4,d);
ps.setString(5,e);
ps.setString(6,f);
ps.setString(7,g);
ps.setString(8,h);
ps.executeUpdate();
 response.sendRedirect("userpage.jsp?success");
}
catch(Exception e1)
{    
out.println(e1.getMessage());
}

	
	
	
	
	
	
%>
</body>
</html>
