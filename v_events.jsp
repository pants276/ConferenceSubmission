<%@ page import="java.sql.*,databaseconnection.*"%>

<!DOCTYPE html>
  <head>
   	<title>Conference Paper Submission</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta charset="utf-8">
	<meta name="viewport" content="initial-scale=1">
 	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,700italic,400,600,700,800' rel='stylesheet' type='text/css'> 
    
   	<link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css"> 
   	<link rel="stylesheet" href="css/templatemo_misc.css">
    <link rel="stylesheet" href="css/jquery-ui.css" /> <!-- popular tab --> 
	<link rel="stylesheet" href="css/templatemo_style.css">
    <!-- 
    Grand Template 
    http://www.templatemo.com/preview/templatemo_442_grand
    -->
    <!-- JavaScripts -->   
    <script src="js/jquery-1.11.1.min.js"></script>  <!-- lightbox -->
	<script src="js/templatemo_tab.js"></script> <!-- lightbox -->
    <script src="js/bootstrap-collapse.js"></script>
    <script src="js/jquery-ui.min.js"></script> <!-- popular tab -->

    <!-- JavaScripts -->  
</head>
  <body>
  	<!-- menu start -->	
  	
<div class="menu"> 
  <div class="container"> 
    <div class="row"> 
      <div class="templatemo_menubg shadow"> 
        <div class="col-sm-4"> 
          <div class="templatemo_logo">Conference</div>
        </div>
        <div class="col-sm-8"> <nav class="navbar navbar-default" role="navigation"> 
          <div class="container-fluid"> 
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header"> 
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"><span class="sr-only">Toggle 
              navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> 
              <span class="icon-bar"></span></button>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div id="top-menu"> 
              <div class="collapse navbar-collapse main_menu" id="bs-example-navbar-collapse-1"> 
                <ul class="nav navbar-nav">
                  <li class="current"><a href="index.html">HOME</a></li>
                  <li><a href="adminpage.jsp">Back</a></li>
                </ul>
              </div>
            </div>
            <!-- /.navbar-collapse -->
          </div>
          <!-- /.container-fluid -->
          </nav> </div>
      </div>
    </div>
  </div>
</div>
   <!-- menu end -->
   <!-- home start -->
   	<div class="templatemo_topbg topmargin">
   	 <div class="templatemo_grey">
        <div class="container">
        	<div class="row">
            	
        <div class="col-md-4"><img src="images/templatemo_homeicon.png" alt="template grand"></div>
                <div class="col-md-8 margin40">
                
					<div >
					<font size="3" ><b>View Events From Authors</b></font></div>
                  
				
				
				
				
				
				  
				  
					
	<table width="606" height="219" align="center"  >
			
			
		
			
			
			
			
	
        <%
		
		
		
		
		
		
Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
Statement st=null;

ResultSet rs1=null;
PreparedStatement ps1=null;
Statement st1=null;
String uid=null,pname=null,size=null,uztime=null,disease=null,msg1=null,md=null,file=null,file1=null ;

String new1="waiting";
System.out.println(new1);

try
{
con=databasecon.getconnection();
 st=con.createStatement();   
 String sqll="select * from event ";
 rs=st.executeQuery(sqll);
while(rs.next()){
	uid=rs.getString("eid");
	//session.setAttribute("up",uid);
	//System.out.println(uid);

	
	String event_name=rs.getString("event_name"); 
	//session.setAttribute("nname",pname);
	
	
	
	String description=rs.getString("description"); 
	//session.setAttribute("uztime",uztime);
	
	String stime=rs.getString("stime");
	//session.setAttribute("size",size); 
	String etime=rs.getString("etime");
	String date=rs.getString("date");
	String conference_room=rs.getString("conference_room");
	String address=rs.getString("address");
	
	 	


%>
      
<tr>
<td>Event Id</td>
<td bgcolor="#996600" height="65" align="center" ><font color="#000000" size="2"><strong><%=uid%></strong></font></td>
</tr>
<tr>
<td>Event Name</td>

<td bgcolor="#996600" height="65" align="center" ><font color="#000000" size="2"><strong><%=event_name%></strong></font></td>
</tr>
<tr>
<td>description</td>
<td bgcolor="#996600" height="65" align="center" ><font color="#000000" size="2"><strong><%=description%></strong></font></td>
</tr>
<tr>
<td>Start Time</td>

<td bgcolor="#996600" height="65" align="center" ><font color="#000000" size="2"><strong><%=stime%></strong></font></td>
</tr>
<tr>
<td>End Time</td>
<td bgcolor="#996600" height="65" align="center" ><font color="#000000" size="2"><strong><%=etime%></strong></font></td>

</tr>

<tr>
<td>Date</td>

<td bgcolor="#996600" height="65" align="center" ><font color="#000000" size="2"><strong><%=date%></strong></font></td>
</tr>

<tr>
<td>Conference Room No</td>

<td bgcolor="#996600" height="65" align="center" ><font color="#000000" size="2"><strong><%=conference_room%></strong></font></td>
</tr>


<tr>
<td>Address</td>
<td bgcolor="#996600" height="65" align="center" ><font color="#000000" size="2"><strong><%=address%></strong></font></td>

</tr>
<% 

}


}

catch(Exception e2)
{
out.print(e2);
}




%>
	</table>			
			
			
			
			
			
			
			
		

				
				
				
				
				
                </div>
            </div>
        </div>
        
     </div>
     </div>
    
     
   <!-- home end -->
   <!-- footer start -->
   <div class="container">
   		<div class="row">
        	<div class="col-md-12 margin30 center">
             <marquee width="500"  behavior="alternate">
		   
		   <font  color="#0000FF" size="3"><b></b></font></marquee>
            </div>
            <div class="footermargin">&nbsp;</div>
        </div>
   </div>
   <!-- footer end-->
   <script>
 

   </script>
  </body>

</html>