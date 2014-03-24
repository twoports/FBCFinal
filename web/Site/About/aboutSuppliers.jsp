<%-- 
    Document   : index
    Created on : 12-Jan-2014, 10:20:08
    Author     : MacBootCamp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="SupplierAdmin.*" %>
<jsp:useBean id="db" scope="page" class="AccessDB.DBConnector" />

<html>
    <head>
        <title>FoodBankClub Supply Chain</title>
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
                    <h1 class="muted">Food Bank Club:</h1>
                    <h1 class="muted"> About Suppliers</h1>
                </div>

                <div class="span4 offset2" style="margin-top:15px;">
                <div id="browse_app">  
                    <a class="btn pull-right"href="../loginJoinup.jsp">Sign In</a>
               </div>
               </div>
              
            </div>
        </div>

        <div class="navbar">
            <div class="navbar-inner">
                <div class="container">
                    <ul class="nav">
                        <li>
                            <a href="../../index.jsp">Home</a>
                        </li>

                        <li>
                            <a href="aboutMembers.jsp">About Members</a>
                        </li>

                        <li>
                            <a href="aboutClubs.jsp">About Clubs</a>
                        </li>

                        <li>
                            <a href="aboutOrders.jsp">About Orders</a>
                        </li>
                        
                        <li>
                             <a href="aboutStock.jsp">About Products</a>
                        </li>
                         <li>
                             <a href="stockShowAllItems.jsp">Our Products</a>
                        </li>
                        
                        <li>
                             <a href="aboutUs.jsp">Contact Us</a>
                        </li>
                        
                        <li>
                             <a href="aboutDonors.jsp">About Donors</a>
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
<legend>Our Suppliers</legend>
        <%
            db.createConnection();
            SupplierList suppList = db.selectAllSuppliers(request.getParameter("orderSupp"));
            db.closeConnection();
             for (int pos = 0; pos < suppList.size(); pos ++) {
             SupplierDetails supplier = suppList.retrieveSupplierAt(pos);
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
       <td><%= supplier.getSuppID()%></td>
          
          <td><%= supplier.getSuppName()%></td>
          
          <td><%= supplier.getSuppTelNum()%></td>
      
          <td><%= supplier.getSuppEmail()%></td>
          
          <td><%= supplier.getSuppTown()%></td>
          
          <td><%= supplier.getSuppTown()%></td>
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
            Suppliers, join our service free of charge now. We operate to provide great food,
            locally sourced for the benefit of our members and clubs. <br>
            <ol type="1">
                <li>All items supplied are food.</li>
                <li>All items supplied do not attract VAT</li>
                <li>Supply is offered free of delivery cost to clubs.</li>
                <li>Suppliers and clubs arrange mutual deliveries.</li>
                <li>We handle payments from clubs to suppliers.</li>
            </ol>
            All deliveries are offered free of charge to promote local producers and products.<br>
            Please contact us to get your products on our stock list and access your local market.<br>
            
           
        </div>
         
        
<div class="hero-unit">     
  <div class="row">
    <div class="col-lg-4">
      <div class="col-md-3">
       
        <a href="../../index.jsp" class="btn btn-medium btn-warning">Home</a>  
        <a href="../loginJoinup.jsp" class="btn btn-medium btn-success">Join Us</a>         
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
