<%@ page import="java.sql.*,databaseconnection.*" errorPage=""%>

<%
String v=request.getParameter("v");
session.setAttribute("vv",v);
String b1="accecpted";

      
try
{
Connection con2 = databasecon.getconnection();
PreparedStatement ps2=con2.prepareStatement("update paper set status=? where pid='"+v+"' ");
ps2.setString(1,b1);
ps2.executeUpdate();

   
 	  response.sendRedirect("ac1.jsp?successfully evaluate the paper");
}

		
		catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
		
				
				
				



%>

