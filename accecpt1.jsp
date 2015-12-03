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
                  <li><a href="user_login.jsp">User_Login</a></li>
                  <li><a href="admin.jsp">Adminstrator</a></li>
                  <li><a href="reviewer.jsp">Reviewer</a></li>
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
                
					<div class="title">The purpose of the project</div>
                  
				
				
				
				
				
				  
				  
					
	<table width="606" height="219" align="center"  >
			
			
			<tr><td colspan="7" >View Authors Submited papers for Conference</td></tr>
			<tr     bgcolor="#000000">
			<td width="172"  ><font  color="#CC0000"size="3"><strong> User Id</strong></font></td>
			
            <td width="228"><font  color="#CC0000"size="3"><strong>Name</strong></font></td>
			
		
		   <td width="228"><font  color="#CC0000"size="3"><strong>Zip </strong></font></td>
		   <td width="228"><font  color="#CC0000"size="3"><strong>Size </strong></font></td>
		     <td width="228"><font  color="#CC0000"size="3"><strong>Send </strong></font></td>
		    
			 
			</tr>
			
			
			
	
        <%
		
		
		
		
		
		
Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
Statement st=null;

ResultSet rs1=null;
PreparedStatement ps1=null;
Statement st1=null;
String uid=null,pname=null,size=null,uztime=null,disease=null,image=null,rating=null,file=null,file1=null ;

String new1="waiting";
System.out.println(new1);

try
{
con=databasecon.getconnection();
 st=con.createStatement();   
 
 
 //SELECT a.tutorial_id, a.tutorial_author, b.tutorial_count
    //FROM tutorials_tbl a, tcount_tbl b
   // WHERE a.tutorial_author = b.tutorial_author;
 String sqll="SELECT a.pid,a.pname,a.uztime,a.size,b.comments,b.rating FROM paper a,comments b WHERE a.pid=b.pid";
 rs=st.executeQuery(sqll);
while(rs.next()){
	uid=rs.getString("pid");
	session.setAttribute("up",uid);
	//System.out.println(uid);

	
	pname=rs.getString("pname"); 
	session.setAttribute("nname",pname);
	
	
	
	uztime=rs.getString("uztime"); 
	session.setAttribute("uztime",uztime);
	
	size=rs.getString("size");
	session.setAttribute("size",size); 
	//String uemail=rs.getString("uemail");
	
	String ax=rs.getString("comments");
	
		//String ax=rs.getString("comments");
		
		if(rs.getString("rating").equals("1")){
							rating=rs.getString("rating");
							image ="images/1star.png";
						}
						else if(rs.getString("rating").equals("2")){
							rating=rs.getString("rating");
							image ="images/2star.png";
						}
						else if(rs.getString("rating").equals("2")){
							rating=rs.getString("rating");
							image ="images/3star.png";
						}
						

	 	


%>
      
<tr>
<td bgcolor="#996600" height="65" align="center" ><font color="#000000" size="2"><strong><%=uid%></strong></font></td>


<td bgcolor="#996600" height="65" align="center" ><font color="#000000" size="2"><strong><%=pname%></strong></font></td>



<td bgcolor="#996600" height="65" align="center" ><font color="#000000" size="2"><strong><%=uztime%></strong></font></td>


<td bgcolor="#996600" height="65" align="center" ><font color="#000000" size="2"><strong><%=size%></strong></font></td>

<td bgcolor="#996600" height="65" align="center" ><font color="#000000" size="2"><strong><%=ax%></strong></font></td>

  <td><img id="Img1" src="<%=image%>" height="20" width="140"> </td>


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
		   
		   <font  color="#0000FF" size="3"><b>Conference Paper Submission</b></font></marquee>
            </div>
            <div class="footermargin">&nbsp;</div>
        </div>
   </div>
   <!-- footer end-->
   <script>
 

   </script>
  </body>

</html>