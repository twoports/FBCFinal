<%-- 
    Document   : index
    Created on : 12-Jan-2014, 10:20:08
    Author     : MacBootCamp
--%>

<%@page import="ClubAdmin.ClubDetails"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="db" scope="page" class="AccessDB.DBConnector" />
<jsp:useBean id="newClub" scope="page" class="ClubAdmin.ClubInput" />

<!DOCTYPE html>
<%-- 
    if (loggedIn != true && role != Admin){
    
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
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>FoodBankClub Admin Functions</title>
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
                    <h1 class="muted">Food Bank Club Admin: New Club</h1>
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
                            <a href="newSupplier.jsp">New Supplier</a>
                        </li>
                        
                        <li>
                            <a href="supplierEdit.jsp">Edit Supplier</a>
                        </li>

                        <li>
                            <a href="supplierDelete.jsp">Delete Supplier</a>
                        </li>
                    
                        <li>
                            <a href="clubAdminEdit.jsp">Edit Club</a>
                        </li>
                        
                        <li>
                            <a href="deleteClub.jsp">Delete Club</a>
                        </li>
                        
                        <li>
                             <a href="newStockItem.jsp">New Stock</a>
                        </li>
                        
                        <li>
                             <a href="editStockItem.jsp">Edit Stock</a>
                        </li>
                      
                    </ul>
                </div>
            </div>
        </div>
      </div>
    </div>
  </div>
    
   

        
        <%
            // Check that the user didn't cancel
           
            ClubDetails club;

            if (request.getParameter("add").equals("Cancel"))
                response.sendRedirect("editClub.jsp");
            else {
            
          %>
          
     <jsp:setProperty name="newClub" property="*" />     
     
          
        
        <%
               
                
            // Check that the clubcode field has been completed
            if (newClub.getClubCode()== null || newClub.getClubCode().length() == 0)
                response.sendRedirect(" clubCodeError.jsp ?message=" +
                        "You must enter a valid Club Code");


            else {
                club = newClub.makeObject();
                out.write("Club Code is " + club.getClubCode());
                db.createConnection();
                db.insertClub(club);
                db.closeConnection();
        %>
     
        
        The following club has been added to the database:<br>
        
        <br>Club Code:  <%=club.getClubCode()%>
        <br>:Club Name:  <%=club.getClubName()%>
        <br>:Club : Club Street Address <%=club.getClubStreetAddr()%>
        <br>:Club Town:  <%=club.getClubTown()%>
        <br>:Club County:  <%=club.getClubCounty()%>
        <br>:Club PostCode:  <%=club.getClubPostCode()%>
        <br>:Club Tel:  <%=club.getClubTelNum()%>
        <br>:Club Email:  <%=club.getClubEmail()%> 
        <br>:Club Manager First Name:  <%=club.getClubManagerFirstName()%>
        <br>:Club : Manager Last Name <%=club.getClubManagerLastName()%>
      
        
      
        
        <% } } %>
   

     
     
        
<div class="hero-unit">     
  <div class="row">
    <div class="col-lg-4">
      <div class="col-md-3">
       
        <a href="../../index.jsp" class="btn btn-medium btn-warning">Home</a>  
               
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
