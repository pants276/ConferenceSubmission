
<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html>
<head>
<title>Chennai Sunday</title>
<script language="JavaScript">

</script>
</head>

<body>		
<%

	

	String fname = (String)session.getAttribute("pname");
         try{
		 
		Blob b = (Blob)session.getAttribute("resumeBlob");

		if(b != null)
		{
	
			String filename =null;
			filename+=".doc";
			byte[] ba = b.getBytes(1, (int)b.length());
			response.setContentType("application/pdf");
			response.setHeader("Content-Disposition","attachment; filename=\""+fname+"\"");
			OutputStream os = response.getOutputStream();
			os.write(ba);
			os.close();
			ba = null;
		
			session.removeAttribute("budget");
			
					
			}
	response.sendRedirect("size.jsp");
			}
			
			
			catch(Exception e)
			{
			out.println("Exception :"+e);
			}
		

		
%>

</body>
</html>