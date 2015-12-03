<%@ page import="java.sql.*,databaseconnection.*"%>


        <%
		
		
		
		
		
	int count=0;	
		
//Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
Statement st=null;

ResultSet rs1=null;
PreparedStatement ps1=null;
Statement st1=null;

String aa=(String)session.getAttribute("eemail");

String a1=request.getParameter("key");
String a2=request.getParameter("key1");
String a3=request.getParameter("key2");

//System.out.println("count id is:"+id1);

try
{
Connection con1=databasecon.getconnection();
 st=con1.createStatement();   
 String sqll="select * from paper where uemail='"+aa+"'";
 rs=st.executeQuery(sqll);
if(rs.next()){
	//a=rs.getString(1);
	
	
	
String pid=rs.getString("pid");
	session.setAttribute("p",pid);
	//System.out.println(uid);

	
	String pname=rs.getString("pname"); 
	session.setAttribute("nname",pname);
	
	
	
	String puztime=rs.getString("uztime"); 
	session.setAttribute("uztime",puztime);
	
	String psize=rs.getString("size");
	session.setAttribute("size",psize); 
	//String uemail=rs.getString("uemail");
	
	
	  
	



try
	{
		
		Connection con = databasecon.getconnection();

		ps = con.prepareStatement("insert into assign(rid,rname,remail,pid,pname,puztime,psize,status) values(?,?,?,?,?,?,?,?)");
		ps.setString(1,a1); 
ps.setString(2,a2);
ps.setString(3,a3);
ps.setString(4,pid);
ps.setString(5,pname);
ps.setString(6,puztime);
ps.setString(7,psize);
ps.setString(8,"waiting");
ps.executeUpdate();
 response.sendRedirect("update.jsp");
}
catch(Exception e1)
{    
out.println(e1.getMessage());
}


}
else
{
System.out.println("hai");

}




}

catch(Exception e2)
{
out.print(e2);
}




%>
