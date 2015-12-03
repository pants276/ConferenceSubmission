<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 
<%@ page import="java.sql.*,databaseconnection.*"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*,org.apache.commons.io.FilenameUtils"%>

"%>

<html>
<head>
<title>dpaas</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
	  
	  <%
	  
	  //String fileName = FilenameUtils.getName(file); 
	   //	System.out.println("!!!!!!!!!!!!!!!!"+fileName);
	  ServletContext context = getServletContext();
      //String dirName = getServletContext().getRealPath("");
		String dirName =context.getRealPath("");
		System.out.println("!!!!!!!!!!!!!!!!"+dirName);
	  
	  
	   String saveFile="";
	 //  PdfReader reader = new PdfReader("SimpleRegistrationForm.pdf");
//int pages = reader.getNumberOfPages();
//String contentType=request.getAttribute("file");
String contentType = request.getContentType();
System.out.println("***********************"+contentType);
if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while(totalBytesRead < formDataLength){
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
File ff = new File(saveFile);
FileOutputStream fileOut = new FileOutputStream(ff);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();

	    
%>
<%


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

FileInputStream fis;
try
{
Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("insert into paper(pid,pname,file,uztime,size,status,uid,uemail) values(?,?,?,?,?,?,?,?)");
File f = new File(saveFile);
ps.setInt(1,aa);
ps.setString(2,a);

fis = new FileInputStream(f);


		 double size=f.length();
		  double  size1=size/1024;
		  double size2=Math.round(size1*100.0)/100.0;
		  String size3=Double.toString(size2);
		  session.setAttribute("filesize",size3);
ps.setBinaryStream(3, (InputStream)fis, (int)(f.length()));

ps.setString(4,strDateNew);
ps.setString(5,size3);
ps.setString(6,s);
ps.setString(7,cc);
ps.setString(8,c);
ps.executeUpdate();
//out.print(passw);
//out.print(Successfully Registered);

response.sendRedirect("success.jsp?success");


}

catch(Exception e1)
{
out.println(e1.getMessage());
}
}
%>

</body>
</html>
