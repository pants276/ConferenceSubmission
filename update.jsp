<%@ page import="java.sql.*,databaseconnection.*" errorPage=""%>


<%
String s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null;
String id1=null;
String id=request.getQueryString();
String p=(String)session.getAttribute("p");
String b="waiting";

      
try
{
Connection con1 = databasecon.getconnection();
PreparedStatement ps1=con1.prepareStatement("update paper set status1=? where pid='"+p+"'");
ps1.setString(1,b);
ps1.executeUpdate();

   
 	  response.sendRedirect("success.jsp?successfully send the permission");
}

		
		catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
		
				
				
				



%>
