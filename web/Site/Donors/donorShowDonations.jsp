<%-- 
    Document   : index
    Created on : 12-Jan-2014, 10:20:08
    Author     : MacBootCamp
--%>

<%@page import="ClubAdmin.ClubList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%><%@page import="DonationAdmin.*" %>
<jsp:useBean id="db" scope="page" class="AccessDB.DBConnector" />
<!DOCTYPE html>
<%-- 
    if (loggedIn != true && role != Donor){
    
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
        <title>FoodBankClub Donations</title>
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
                    <h1 class="muted">Food Bank Club Donors: Show Donations</h1>
                </div>

                <div class="span4 offset2" style="margin-top:15px;">
                <div id="browse_app">  
                    <a class="btn pull-right" href="../loginJoinup.jsp">Logout</a>
                </div>
               </div>
            </div>
        </div>

        <div class="navbar">
            <div class="navbar-inner">
                <div class="container">
                    <ul class="nav">
                         <li>
                            <a href="../../welcomeJSF.jsp">Home</a>
                        </li>

                        <li>
                            <a href="donateMake.jsp">Donate</a>
                        </li>

                        <li>
                            <a href="donorShowDetail.jsp">Show Details</a>
                        </li>
                        
                       
                      
                    </ul>
                </div>
            </div>
        </div>
      </div>
    </div>
  </div>
  <%
            db.createConnection();
            DonationList donList = db.selectAllDonations(request.getParameter("orderDonations"));
            ClubList clubList = db.selectAllClubs(request.getParameter("orderClubs"));
            db.closeConnection();
            for (int pos = 0; pos < donList.size(); pos ++) {
                DonationDetails donations = donList.retrieveDonationAt(pos); 
        %>  
        
        <table class="table">
    
      <thead>
        <tr>
          <th>Club Code</th>
          <th>Amount Donated </th>
               
        </tr>
         <td><%= donations.getClubCode()%></td>   
          <td>£<%= donations.getAmountDonated()%></td>    
          
      </thead>
 
      <tbody>
  
      </tbody>
 
      <tbody></tbody>
    </table>  
            <%
                } // end for
            %>
<div class="hero-unit">     
  <div class="row">
    <div class="col-lg-4">
      <div class="col-md-3">
       
        <a href="../loginJoinup.jsp" class="btn btn-medium btn-warning">Home</a>  
       
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