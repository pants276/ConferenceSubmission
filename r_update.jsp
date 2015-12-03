<%@ page import="java.sql.*,databaseconnection.*" errorPage=""%>
<%@ page import="java.sql.*,db.*" errorPage=""%>

<%@ page import="java.sql.*,db1.*" errorPage=""%>
<%@ page import="java.sql.*,db1.*" errorPage=""%>


<%
String s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null;
String id1=null;
String id=request.getQueryString();
String aa=(String)session.getAttribute("aa");
String b="evaluated";

      
try
{
Connection con1 = databasecon.getconnection();
PreparedStatement ps1=con1.prepareStatement("update paper set status1=? where pid='"+aa+"'");
ps1.setString(1,b);
ps1.executeUpdate();

   
 	  response.sendRedirect("success.jsp?successfully evaluate the paper");
}

		
		catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
		
				
				
				



%>
<%
String aa1=(String)session.getAttribute("aa");
String b1="evaluated";

      
try
{
Connection con2 = databasecon.getconnection();
PreparedStatement ps2=con2.prepareStatement("update assign set status=? where pid='"+aa1+"' ");
ps2.setString(1,b1);
ps2.executeUpdate();

   
 	  response.sendRedirect("success.jsp?successfully evaluate the paper");
}

		
		catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
		
				
				
				



%>
