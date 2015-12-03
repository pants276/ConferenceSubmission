<%@ page import="java.sql.*,databaseconnection.*" errorPage=""%>

<%
String v11=(String)session.getAttribute("vv");
String b11="published";

      
try
{
Connection con12 = databasecon.getconnection();
PreparedStatement ps12=con12.prepareStatement("update paper set status1=? where pid='"+v11+"' ");
ps12.setString(1,b11);
ps12.executeUpdate();

   
 	  response.sendRedirect("success.jsp?successfully evaluate the paper");
}

		
		catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
				
		
				
				
				



%>
