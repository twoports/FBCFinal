<%-- 
    Document   : index
    Created on : 12-Jan-2014, 10:20:08
    Author     : MacBootCamp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 
    if (loggedIn != true && role != Club){
    
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
        <title>FoodBankClub Clubs</title>
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
                                    <h1 class="muted">Food Bank Clubs: Delete Member</h1>
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
                                            <a href="clubAddOrder.jsp">New Order</a>
                                        </li>

                                        <li>
                                            <a href="clubShowOrders.jsp">All Orders</a>
                                        </li>

                                        <li>
                                            <a href="clubShowDetail.jsp">Club Info</a>
                                        </li>

                                        <li>
                                            <a href="clubEditDetail.jsp">Edit Club</a>
                                        </li>

                                        <li>
                                            <a href="clubMemberAdd.jsp">Add Member</a>
                                        </li>

                                        
                                        <li>
                                            <a href="clubMemberEdit.jsp">Edit Member</a>
                                        </li>
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
         
                <h2>Delete Member </h2>
         
                <!-- Member ID Display-->
                <div class="control-group">
                    <label class="control-label">Member ID</label>
                    <div class="controls">
                        <input id="full-name" name="member-id" type="text" placeholder="Member ID"
                        class="input-xlarge">
                        <p class="help-block"></p>
                    </div>
                     <!-- First Name-->
                </div><div class="control-group">
                    <label class="control-label">First Name</label>
                    <div class="controls">
                        <input id="full-name" name="first-name" type="text" placeholder="first-name"
                        class="input-xlarge">
                        <p class="help-block"></p>
                    </div>
                     <!-- Last Name -->
                </div>
                <div class="control-group">
                    <label class="control-label">Last Name</label>
                    <div class="controls">
                        <input id="full-name" name="last-name" type="text" placeholder="last name"
                        class="input-xlarge">
                        <p class="help-block"></p>
                    </div>
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
                    <label class="control-label">Mobile</label>
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
  </div>
                  </div>
              </div>
    </body>
</html>