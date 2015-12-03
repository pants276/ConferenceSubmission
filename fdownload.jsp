<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<%@ page import="java.sql.*,java.io.*"  %>
<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>

  
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>








<%

String name1=request.getParameter("pid");

try
			{
			Connection con=databasecon.getconnection();
		Statement st=con.createStatement();
	String qry =" select  * from paper where pid='"+name1+"'"; 
	ResultSet rs = st.executeQuery(qry);
	if(rs.next()){
	String name=rs.getString("fname");
	
	



try {
	 String UPLOAD_DIRECTORY = "Gallery";
	    ArrayList list = new ArrayList();
		ServletContext context = getServletContext();
		String dirName = getServletContext().getRealPath("")
	            + File.separator + UPLOAD_DIRECTORY; 
		File resume=new File(dirName);
	    if(!resume.exists())
	    {
	    	resume.mkdir();
	    }
	            
	    System.out.println("Directory Name " +dirName);
	   String fPath = context.getRealPath("//Gallery/"+name);
	   String filename = fPath;
	   System.out.println("ssssssss"+filename);
	   System.out.println("Directory Name " +fPath);
	  // response.setContentType("text/html");  
	   //ggg
	   PrintWriter out1 = response.getWriter();  
	   //String filename1= "home.jsp";   
	  // String filepath = "e:\\";   
	  // response.setContentType("APPLICATION/OCTET-STREAM");   
	 response.setContentType("application/pdf");
			response.setHeader("Content-Disposition","attachment; filename=\""+filename+"\"");
			     
	   FileInputStream fileInputStream = new FileInputStream(fPath);  
	               
	   int i;   
	   while ((i=fileInputStream.read()) != -1) {  
	   out1.write(i);   
	   }   
	   fileInputStream.close();   
	   out1.close();   
	   
	   }catch(Exception e) // file IO errors
	   {
	   e.printStackTrace();
	}
	
	
	}
	
	}
	catch(Exception e1)
	{
	e1.printStackTrace();
	}
	
	
	
	
	
	
	
	
	
	%>
    
    <% %>
</body>
</html>