<%-- 
    Document   : index
    Created on : 12-Jan-2014, 10:20:08
    Author     : MacBootCamp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                    <h1 class="muted">Food Bank Club:</h1>
                     <h1 class="muted">Make a Donation</h1>
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
                            <a href="../../index.jsp">Home</a>
                        </li>

                        
                        <li>
                            <a href="donorShowDetail.jsp">Show Details</a>
                        </li>
                        
                        <li>
                            <a href="donorShowDonations.jsp">Show Donations</a>
                        </li>
                            <form action = "ClubLogin.java" method = get>
                            <label class="control-label"  for="username">Club Code</label>
                            <div class="controls">
                              <input type="text" id="username" name="username" placeholder="" class="input-xlarge">
                            </div>
                          </div>
                          <div class="control-group">          
                              <!-- Username -->
                            <label class="control-label"  for="username">Username</label>
                            <div class="controls">
                              <input type="text" id="username" name="username" placeholder="" class="input-xlarge">
                            </div>
                          </div>
                          <div class="control-group">
                            <!-- Password-->
                            <label class="control-label" for="password">Password</label>
                            <div class="controls">
                              <input type="password" id="password" name="password" placeholder="" class="input-xlarge">
                            </div>
                          </div>
                          <div class="control-group">
                            <!-- Button -->
                            <div class="controls">
                              <button class="btn btn-success">Login</button>
                              
                              <button class="btn btn-warning">Logout</button>
                          </form>
                            
                            </div>
                          </div>
                        </fieldset>
                      </form>                
                    </div>
                    <div class="tab-pane fade" id="create">
                      <form id="tab">
                        <label>Club Code</label>
                        <input type="text" value="" class="input-xlarge">
                        <label>First Name</label>
                        <input type="text" value="" class="input-xlarge">
                        <label>Last Name</label>
                        <input type="text" value="" class="input-xlarge">
                        <label>Email</label>
                        <input type="text" value="" class="input-xlarge">
                        
                        <label>Street Address</label>
                        <input type="text" value="" class="input-xlarge">
                        <label>Town </label>
                        <input type="text" value="" class="input-xlarge">
                        <label>County </label>
                        <input type="text" value="" class="input-xlarge">
                        <label>Post Code </label>
                        <input type="text" value="" class="input-xlarge">
                        <label>Tel Number </label>
                        <input type="text" value="" class="input-xlarge">
                        <label>Password</label>
                        <input type="text" value="" class="input-xlarge">
                        <label>Verify Password</label>
                        <input type="text" value="" class="input-xlarge">              
                        <div>
                          <button class="btn btn-primary">Place Donation</button>
                        </div>
                      </form>
                   
                    </ul>
                </div>
            </div>
        </div>
      </div>
    </div>
  </div>
       
         
        
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
