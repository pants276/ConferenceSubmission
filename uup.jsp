<%
String uname=(String)session.getAttribute("sessname");
String status=null;
/*
String s5="blocked";
try
{
	
	Connection con=database.getconnection(); 
	Statement st=con.createStatement();
	ResultSet rs = st.executeQuery("SELECT status FROM user_details where user_id='"+uname+"' and type='owner';");
	while(rs.next()) 
	{
	status=rs.getString("status");
	out.print(status);
	}
								
 } 
			catch (Exception e) 
			{
				out.println(e.getMessage());
			}
/*
if(status.equals(s5))
{
	response.sendRedirect("ownerblocked.jsp");
}

else
{
*/
%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>


<%
		
		Random rand = new Random();
		int num = rand.nextInt(100000);
		//String num=Integer.parseInt(num1);
		//out.println("Generated Random Number between 0 to 10 is : " + num);
		//out.println();
		
		String ipAddress =  request.getRemoteAddr();
		//out.println("ipAddress is : " + ipAddress);
		
		
		//out.println(str);
		//out.println(date);
        ArrayList list = new ArrayList();
		ServletContext context = getServletContext(); 

		String dirName =context.getRealPath("\\Gallery");
		String paramname=null;
		String file=null,sfile=null,size=null;
		String image=null,path=null,spath=null,placeimage=null;		
		Connection con=null;		
 		int count=0;
		long size_kb=0;
		File file1 = null;
	
			String fPath =null;
			
		
	try {

			MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB

			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
				
									
				if(paramname.equalsIgnoreCase("image"))
				{
					image=multi.getParameter(paramname);
				}
				
				
				}
					
			int f = 0;
	Enumeration files = multi.getFileNames();
	String ans="null,";	
	while (files.hasMoreElements()) 
	{
		paramname = (String) files.nextElement();
		if(paramname.equals("d1"))
		{
			paramname = null;
		}
		
		if(paramname != null)
		{
			f = 1;
			image = multi.getFilesystemName(paramname);
			//out.println(image);
			fPath = context.getRealPath("\\Gallery\\"+image);
			path="Gallery/"+image;
			file1 = new File(fPath);
			FileInputStream fs = new FileInputStream(file1);
			list.add(fs);
			
			long file_size = file1.length();
			size_kb=file_size/1024;
			size=size_kb+"kb".toString();
			//out.println("Size of the file : " + size);
			//out.println();
			FileReader fr=new FileReader(file1);
			LineNumberReader ln=new LineNumberReader(fr);
			
			while (ln.readLine()!=null) {
				count++;
			}
			
			
		}	
		
			
		
	}
	  	 
		 String a=(String)session.getAttribute("cname");
Integer b=(Integer)session.getAttribute("id");

String cc=Integer.toString(b);
String c=(String)session.getAttribute("email");


	java.util.Date now = new java.util.Date();
	String date=now.toString();
	 String DATE_FORMAT = "yyyy-MM-dd hh:mm:ss";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ;

//String ffnn=request.getParameter("key1");


int aa=(int) (Math.random() * 100);

String aa1=Integer.toString(aa);
//String a="D:\\apache-tomcat-6.0.18\\webapps\\DpaaswithsecureDataForwarding\\file\\";
//String fname=a+ff;
/*
FileInputStream fis=null;
BufferedInputStream bis = null;
DataInputStream dis = null;


File image=new File(fname);
 StringBuffer fileData = new StringBuffer(1000);
        BufferedReader reader = new BufferedReader(
                new FileReader(fname));
        char[] buf = new char[1024];
 
        int numRead=0;
        while((numRead=reader.read(buf)) != -1){
            String readData = String.valueOf(buf, 0, numRead);
            fileData.append(readData);
            buf = new char[1024];
        }
 
        reader.close();
        String s1=(fileData.toString());
       
	   */

String s="waiting";

		 
		 			
			con=databasecon.getconnection(); 
			PreparedStatement ps=null;
		     ps=con.prepareStatement("insert into paper(fname,path,file_line,pid,pname,uztime,size,status,uid,uemail) values(?,?,?,?,?,?,?,?,?,?)");
				//ps.setString(1,image);
               	ps.setString(1,image);
				ps.setString(2,path);	
       //			ps.setString(3,size);
				ps.setInt(3,count);
				ps.setString(4,aa1);
				ps.setString(5,a);
				ps.setString(6,strDateNew);
				
				ps.setString(7,size);
				ps.setString(8,s);
				ps.setString(9,cc);
				ps.setString(10,c);
				
																
	    	  int x=ps.executeUpdate();
		
			response.sendRedirect("success.jsp");
				
							
							  
		  
		  } 
			catch (Exception e) 
			{
				out.println(e.getMessage());
			}
				
				
				
							
				
//}				
				
				
		
				
						

	
 %>
</body>
</html>



