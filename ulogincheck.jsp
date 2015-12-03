
<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<html>
<head>
<title>Innovative Schemes for Resource Allocation</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%

Statement st = null;
ResultSet rs = null;

int id;
String email = request.getParameter("email");
	session.setAttribute("email",email);
String password = request.getParameter("pass");

try
			{
			Connection con=databasecon.getconnection();
			st=con.createStatement();
	String qry =" select  * from register where email='"+email+"' and pass='"+password+"' "; 
	rs = st.executeQuery(qry);
	if(!rs.next()){
	out.println("Enter correct Email  And password");
	
	}
	else{
	
	
	id=rs.getInt("uid");
	session.setAttribute("id",id);
	
	
	email=rs.getString("email");
	session.setAttribute("email",email);
	//System.out.println(email);
	
	response.sendRedirect("userpage.jsp");
	
	
	
	
			
	}
	con.close();
	st.close();
}
catch(Exception ex){
	out.println(ex);
}
%>
</body>
</html>


