<%@ page import="java.sql.*,databaseconnection.*"%>

<!DOCTYPE html>
  <head>
    <title>Contact - Grand Responsive Template</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta charset="utf-8">
	<meta name="viewport" content="initial-scale=1">
 	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,700italic,400,600,700,800' rel='stylesheet' type='text/css'> 
    
   	<link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css"> 
   	<link rel="stylesheet" href="css/templatemo_misc.css">
	<link rel="stylesheet" href="css/templatemo_style.css">  
	<!-- 
    Grand Template 
    http://www.templatemo.com/preview/templatemo_442_grand
    -->
    <!-- JavaScripts -->   
    <script src="js/jquery-1.11.1.min.js"></script>  <!-- lightbox -->
	<script src="js/templatemo_custom.js"></script> <!-- lightbox -->
    <script src="js/jquery.lightbox.js"></script>
    <script src="js/bootstrap-collapse.js"></script>    
    
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
                  <li><a href="index.html">HOME</a></li>
                  <li><a href="view_spaper.jsp">Back</a></li>
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
   <!-- contact start -->
   	<div class="templatemo_topbg topmargin">
   	 <div class="templatemo_grey">
        <div class="container">
        
     
     
     <div class="container">
     	<div class="row margin30">
        	
      <div class="col-md-4"> 
        <div class="templatemo_contact_map shadow"> <img src="images/assign.jpg"> 
        </div>
      </div>
            
      <div class="col-md-8"> 
        <div class="templatemo_contact_form shadow"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          <img  align="middle" src="images/downarrows.gif"> <br>
          <br>
          <form action="up_permission1.jsp" method="get">
            <table width="686" height="186" >
              <%
		
		
		// v1=request.getParameter("a");
		
		
	//int v1=0;
	int id=0;	
		
Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
Statement st=null;

String email=null,name=null,scode=null,mobile=null,msg1=null;

String v="waiting";

%>
              <tr>
                <td></td>
              </tr>
              <%
 String v1=request.getParameter("a");
 session.setAttribute("eemail",v1);
PreparedStatement ps1 = null;
	ResultSet rs1 = null;
	

	
	try
	{
		
		Connection con1 
					 = databasecon.getconnection();

		ps1 = con1.prepareStatement("select uid from register where email!='"+v1+"'");
		rs1 = ps1.executeQuery();
		%>
              <tr> 
                <td width="171" height="42"><font size="3"   color="#000000"><b> 
                  Reviewer Id</b></font></td>
                <td width="190"><select name="key">
                    <option value="0">--Select--</option>
                    <%
					  while(rs1.next())
				     {
					 %>
                    <option value="<%=rs1.getString(1)%>"> 
                    <%=rs1.getString(1)%> </option>
                    <%
					  }
					 
					  %>
                    <%
}
catch(Exception e2)
	{
		System.out.println(e2);
	}
	 
 
  %>
                  </select> </td>
              </tr>
              <tr>
                <td></td>
              </tr>
              <%
 String v2=request.getParameter("a");
PreparedStatement ps2 = null;
	ResultSet rs2 = null;
	

	
	try
	{
		
		Connection con2
					 = databasecon.getconnection();

		ps2 = con2.prepareStatement("select name from register where email!='"+v1+"'");
		rs2 = ps2.executeQuery();
		%>
              <tr> 
                <td width="171" height="42"><font size="3"  color="#000000"><b> 
                 Reviewer Name</b></font></td>
                <td width="190"><select name="key1">
                    <option value="0">--Select--</option>
                    <%
					  while(rs2.next())
				     {
					 %>
                    <option value="<%=rs2.getString(1)%>"> 
                    <%=rs2.getString(1)%> </option>
                    <%
					  }
					 
					  %>
                    <%
}
catch(Exception e2)
	{
		System.out.println(e2);
	}
	 
 
  %>
                  </select> </td>
              </tr>
              <tr>
                <td></td>
              </tr>
              <%
 String v3=request.getParameter("a");
PreparedStatement ps3 = null;
	ResultSet rs3 = null;
	

	
	try
	{
		
		Connection con3
					 = databasecon.getconnection();

		ps3 = con3.prepareStatement("select email from register where email!='"+v1+"'");
		rs3 = ps3.executeQuery();
		%>
              <tr> 
                <td width="171" height="42"><font size="3"  color="#000000"><b> 
                  Reviewer Email</b></font></td>
                <td width="190"><select name="key2">
                    <option value="0">--Select--</option>
                    <%
					  while(rs3.next())
				     {
					 %>
                    <option value="<%=rs3.getString(1)%>"> 
                    <%=rs3.getString(1)%> </option>
                    <%
					  }
					 
					  %>
                    <%
}
catch(Exception e2)
	{
		System.out.println(e2);
	}
	 
 
  %>
                  </select> </td>
              </tr></tr>
              <tr>
                <td colspan="2" align="center"><input type="submit" value="Submit"></td>
              </tr>
            </table>
          </form>
        </div>
      </div>
        </div>
     </div></div>
   <!-- contact end -->
   <!-- footer start -->
   <div class="container">
   		<div class="row">
        	<div class="col-md-12 margin30 center">
            
            </div>
            <div class="footermargin">&nbsp;</div>
        </div>
   </div>
   <!-- footer end-->
  </body>

</html>