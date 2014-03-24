<%-- 
    Document   : index
    Created on : 12-Jan-2014, 10:20:08
    Author     : MacBootCamp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="memberAdmin.*" %>
<jsp:useBean id="db" scope="page" class="AccessDB.DBConnector" />
<%-- 
    if (loggedIn != true && role != Member){
    
     //redirect to home page

     <a href="../../index.jsp"></a>
     }
     else {

     //display page by exit loop

     break;
     } 

--%>
<html>
    <head>
        <title>FoodBankClub Members</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" href="../../css/bootstrap.css" type="text/css">
    </head>
 <body>
        <script src="js/jquery/jquery.js"></script>
        <script src="js/bootstrap.js"></script>
        <div class="container">
  <div class="row">
    <div class="span12">
      <div class="head">
        <div class="row-fluid">
            <div class="span12">
                <div class="span6">
                    <h1 class="muted">Food Bank Club Members: Your Club Members</h1>
                </div>

                <div class="span4 offset2" style="margin-top:15px;">
                <div id="browse_app">  
                    <a class="btn pull-right"href="../loginJoinup.jsp">Logout</a>
                </div>
               </div>
            </div>
        </div>

        <div class="navbar">
            <div class="navbar-inner">
                <div class="container">
                    <ul class="nav">
                         <li>
                            <a href="../loginJoinup.jsp">Home</a>
                        </li>

                        <li>
                            <a href="memberShowClubOrders.jsp">Club Orders</a>
                        </li>
 
                    </ul>
                </div>
            </div>
        </div>
      </div>
    </div>
  </div>
   <form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Our Members</legend>
        <%
            db.createConnection();
            MemberList memList = db.selectAllMembers(request.getParameter("MemberID"));
            db.closeConnection();
             for (int pos = 0; pos < memList.size(); pos ++) {
             MemberDetails member = memList.retrieveMemberAt(pos);
        %> 
<table class="table">
    
      <thead>
        <tr>
          <th>Supplier Name</th>
 
          <th>Supplier Address</th>
 
          <th>Town</th>
          
          <th>County</th>
          
          <th>Post Code</th>
 
          <th>Phone</th>
          
          <th>Email</th>
        
        
        </tr>
       <td><%= member.getMemClub()%></td>
       
       <td><%= member.getMemFirstName()%></td>
       
       <td><%= member.getMemLastNAme()%></td>
       
       <td><%= member.getMemTelNum()%></td>
       
       <td><%= member.getMemEmail()%></td>
          
          
      </thead>
 
      <tbody>
  
      </tbody>
 
      <tbody></tbody>
    </table>  
            <%
                } // end for
            %>
<!-- Textarea -->
<div class="control-group">
  </div>
</div>

</fieldset>
</form>
         
        
<div class="hero-unit">     
  <div class="row">
    <div class="col-lg-4">
      <div class="col-md-3">
       
        <a href="../../welcomeJSF.jsp" class="btn btn-medium btn-warning">Home</a>  
       
      </div>
    </div>
  </div> 
</div> 
    
    <div id="footer">
      <div class="navbar navbar-fixed-bottom">
        <div class="navbar-inner">
          <div class="container">
            <ul class="nav">
               <p class="muted pull-right">© 2014 FoodBankClub Registered Charity X123456. All rights reserved</p>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
   
   </body>
</html>
