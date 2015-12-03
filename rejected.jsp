<%@ page import="java.sql.*,databaseconnection.*" errorPage=""%>
<%@ page import="java.sql.*,db.*" errorPage=""%>

<%@ page import="java.sql.*,db1.*" errorPage=""%>
<%@ page import="java.sql.*,db1.*" errorPage=""%>

<%
String v1=request.getParameter("v1");
String b1="rejected";

      
try
{
Connection con2 = databasecon.getconnection();
PreparedStatement ps2=con2.prepareStatement("update paper set status=? where pid='"+v1+"' ");
ps2.setString(1,b1);
ps2.executeUpdate();

   
 	  response.sendRedirect("success.jsp?successfully evaluate the paper");
}

		
		catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
		
				
				
				



%>
<%@ page import="java.sql.*,databaseconnection.*" errorPage=""%>
