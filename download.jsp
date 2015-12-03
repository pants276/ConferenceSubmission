<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<%@ page import="java.sql.*,java.io.*"  %>
<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>








	
	<%
	Integer aid=(Integer)session.getAttribute("s");
	//String fid1=fid.trim();
	
	//session.setAttribute("fid1",fid1);

	
	String ac=request.getParameter("pp");

	
	/*


	*/
	Blob file= null;
	
	
	PreparedStatement ps = null;
	ResultSet rs = null;
		String sql=null;
	 sql = "select file,pname from paper where pid ='"+ac+"'";
	
	try
	{
		Connection con1 = databasecon.getconnection();
		ps = con1.prepareStatement(sql);
		rs = ps.executeQuery();
		while(rs.next())
		{
		file = rs.getBlob(1);
		String pname=rs.getString(2);
		session.setAttribute("pname",pname);
		}
		session.setAttribute("resumeBlob",file);
		response.sendRedirect("download1.jsp");
	}
	catch(Exception e)
	{
	out.println("Exception :"+e);
	}
	
	
	
	%>
