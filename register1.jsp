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


String a=request.getParameter("name");
String b=request.getParameter("email");

String c=request.getParameter("pass");

String d=request.getParameter("dob");
String e=request.getParameter("mobile");
String f=request.getParameter("gender");
String g=request.getParameter("address");
String  h=request.getParameter("tech");

int aaa=(int) (Math.random() * 100);
int bbb=aaa*5;


PreparedStatement ps = null;

	ResultSet rs = null;
	
	
	PreparedStatement ps1 = null;

	ResultSet rs1 = null;
	Statement st1=null;
	try
			{
			Connection con1=databasecon.getconnection();
			st1=con1.createStatement();
	String qry1 =" select  * from register where email='"+b+"'  "; 
	rs1 = st1.executeQuery(qry1);
	if(!rs1.next()){
	
	try
	{
		
		Connection con = databasecon.getconnection();

		ps = con.prepareStatement("insert into register(name,email,pass,dob,mobile,gender,address,tech) values(?,?,?,?,?,?,?,?)");
		ps.setString(1,a); 
ps.setString(2,b);
ps.setString(3,c);
ps.setString(4,d);
ps.setString(5,e);
ps.setString(6,f);
ps.setString(7,g);
ps.setString(8,h);
ps.executeUpdate();
 response.sendRedirect("index.html?success");
}
catch(Exception e1)
{    
out.println(e1.getMessage());
}

	
	}
	else{
	
	
	out.print("The registerd email id is alredy in our Db Try with different Eamil ID");
	
	
	
			
	}
	con1.close();
	st1.close();
}
catch(Exception e1)
{    
out.println(e1.getMessage());
}

	
	
	
	
	
	
	
	
	
%>
</body>
</html>
