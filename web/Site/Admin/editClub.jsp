<%-- 
    Document   : index
    Created on : 12-Jan-2014, 10:20:08
    Author     : MacBootCamp
--%>

<%@page import="ClubAdmin.ClubDetails"%>
<jsp:useBean id="db" scope="page" class="AccessDB.DBConnector" />
<jsp:useBean id="club" scope="page" class="ClubAdmin.ClubDetails" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                    <h1 class="muted">Food Bank Club Admin: Edit Clubs</h1>
                </div>
                
                 <%
        if (request.getParameter("button").equals("Cancel"))
            response.sendRedirect("clubCodeError.jsp");
        else {
        %>
                
            
        
            <jsp:setProperty name="club" property="*" />

            <%
                db.createConnection();
                db.updateClub(club);
                db.closeConnection();
            %>

            <br>
            ClubCode <jsp:getProperty name="clubCode" property="clubCode" /> has been updated.
            <br><br>
            <a href="../../index.jsp">Back to the admin home page</a>

        <%
        } // end else
        %>    
                

     
                <div class="span4 offset2" style="margin-top:15px;">
                <div id="browse_app">  
                    <a class="btn pull-right"href="../../loginJoinup.jsp">Logout</a>
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
                             <a href="newClub.jsp">New Club</a>
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
       
     <div class="container">
	<div class="well span11">
            <div class="row">
            <div class="span3">
		 <form class="form-horizontal">
            <fieldset>
                <!-- Address form -->
         
                <h2>Admin Edit Club</h2>
         
                <!-- Club ID Display-->
                <div class="control-group">
                    <label class="control-label">Club ID</label>
                    <div class="controls">
                        <input id="full-name" name="club-id" type="text" placeholder="club-code"
                        class="input-xlarge">
                        <p class="help-block"></p>
                    </div>
                     <!-- Club Name-->
                </div><div class="control-group">
                    <label class="control-label">Club Name</label>
                    <div class="controls">
                        <input id="full-name" name="club-name" type="text" placeholder="club-name"
                        class="input-xlarge">
                        <p class="help-block"></p>
                    </div>
                <!-- address-line1 input-->
                <div class="control-group">
                    <label class="control-label">Address Line 1</label>
                    <div class="controls">
                        <input id="address-line1" name="address-line1" type="text" placeholder="address line 1"
                        class="input-xlarge">
                        <p class="help-block">Street address, P.O. box, company name, c/o</p>
                    </div>
                </div>
                <!-- address-line2 input-->
                <div class="control-group">
                    <label class="control-label">Address Line 2</label>
                    <div class="controls">
                        <input id="address-line2" name="address-line2" type="text" placeholder="address line 2"
                        class="input-xlarge">
                        <p class="help-block">Apartment, suite , unit, building, floor, etc.</p>
                    </div>
                </div>
                <!-- city input-->
                <div class="control-group">
                    <label class="control-label">City / Town</label>
                    <div class="controls">
                        <input id="city" name="city" type="text" placeholder="city" class="input-xlarge">
                        <p class="help-block"></p>
                    </div>
                </div>
                <!-- region input-->
                <div class="control-group">
                    <label class="control-label">County / Province / Region</label>
                    <div class="controls">
                        <input id="region" name="region" type="text" placeholder="state / province / region"
                        class="input-xlarge">
                        <p class="help-block"></p>
                    </div>
                </div>
                <!-- postal-code input-->
                <div class="control-group">
                    <label class="control-label">Zip / Postal Code</label>
                    <div class="controls">
                        <input id="postal-code" name="postal-code" type="text" placeholder="zip or postal code"
                        class="input-xlarge">
                        <p class="help-block"></p>
                    </div>
                </div>
                <!-- Club Mananger First Name-->
                </div><div class="control-group">
                    <label class="control-label">Club Manager First Name</label>
                    <div class="controls">
                        <input id="full-name" name="clubmanager-first-name" type="text" placeholder="clubmananger-first-name"
                        class="input-xlarge">
                        <p class="help-block"></p>
                    </div>
                     <!-- Club Manager Last Name -->
                </div>
                <div class="control-group">
                    <label class="control-label">Club Manager Last Name</label>
                    <div class="controls">
                        <input id="full-name" name="club-manager-last-name" type="text" placeholder="clubmanager-last name"
                        class="input-xlarge">
                        <p class="help-block"></p>
                    </div>
                </div>
                <!-- mobile number -->
                <div class="control-group">
                    <label class="control-label">Mobile</label>
                    <div class="controls">
                        <input id="full-name" name="mobile" type="text" placeholder="mobile number"
                        class="input-xlarge">
                        <p class="help-block"></p>
                    </div>
                </div>
                 <!-- landline number -->
                <div class="control-group">
                    <label class="control-label">Landline</label>
                    <div class="controls">
                        <input id="full-name" name="landline" type="text" placeholder="Home or Business Landline"
                        class="input-xlarge">
                        <p class="help-block"></p>
                    </div>
                </div>
                  <!-- email address -->
                <div class="control-group">
                    <label class="control-label">Email</label>
                    <div class="controls">
                        <input id="full-name" name="email" type="text" placeholder="e.g., member@foodbankclub.org"
                        class="input-xlarge">
                        <p class="help-block"></p>
                    </div>
                </div>
            </fieldset>
        </form>
	</div>
</div>
     
       <form name="amend" method="post" action="UpdateClub.jsp" >
             
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

