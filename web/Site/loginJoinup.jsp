<%-- 
    Document   : index
    Created on : 12-Jan-2014, 10:20:08
    Author     : MacBootCamp
--%>

<%-- 
    Parsing login username and password to bean not working at present. 
    When functional use code as below

    Role defined slection enforces referential integrity. 

   Each web page calls login page, role specific pages confirm that the correct type of bean boolean value is false for the role type, 
   if false redirects to login page else displays page. 

   Checking all roleBean values allows a member with multiple roles to access all entitled pages from one login. 

--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="LoginAdmin.*" %>
<jsp:useBean id="db" scope="session" class="AccessDB.DBConnector" />

<%
//clear browser cache    
    
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setDateHeader("Expires", 0); // Proxies.
%>

<html>
    
    <head>
       
        <title>FoodBankClub JoinUs</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" href="../css/bootstrap.css" type="text/css">
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
                    <h1 class="muted">Food Bank Club</h1>
                </div>

                <div class="span4 offset2" style="margin-top:15px;">
                <div id="browse_app">  
                    <a class="btn pull-right" href="loginJoinup.jsp">Sign In</a>
                </div>
               </div>
            </div>
        </div>

        <div class="navbar">
            <div class="navbar-inner">
                <div class="container">
                    <ul class="nav">
                         <li>
                            <a href="About/aboutUs.jsp">Home</a>
                        </li>
                        <li>
                            <a href="Admin/newClub.html">Admin</a>
                        </li>
                        <li>
                            <a href="Clubs/ClubHome.jsp">Club</a>
                        </li>
                        <li>
                            <a href="Suppliers/supplierShowStock.jsp">Supplier</a>
                        </li>
                        <li>
                            <a href="Orders/clubAddOrder.jsp">Orders</a>
                        </li>
                        <li>
                             <a href="Members/memberShowClubMembers.jsp">Members</a>
                        </li>
                        <li>
                             <a href="Donors/donateMake.jsp">Donate</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
      </div>
    </div>
  </div>
        </div>
        <div class="container">
	<div class="row">
        <div class="span12">
    		<div class="" id="loginModal">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h3>Have an Account?</h3>
              </div>
              <div class="modal-body">
                <div class="well">
                  <ul class="nav nav-tabs">
                    <li class="active"><a href="#login" data-toggle="tab">Login</a></li>
                    <li><a href="#create" data-toggle="tab">Create Account</a></li>
                  </ul>
                  <div id="myTabContent" class="tab-content">
                    <div class="tab-pane active in" id="login">
                      <form class="form-horizontal" action='' method="POST">
                        <fieldset>
                           
                          <div class="control-group">
              
                      
                           
                           <div class="control-group">
                    <label class="control-label">Role</label>
                    <div class="controls">
                        
                        
                         <select id="role" name="role" class="input-xlarge">
                           
                            <option value="" selected="selected">(Select your role)</option>
                            <option value="Admin">Web Admin</option>
                            <option value="Donor">Donor</option>
                            <option value="Member">Member</option>
                            <option value="Club">Club Manager</option>
                            <option value="Supplier">Supplier</option>
                            
                             
                             
                        </select>
                    </div>
                </div>
                          </div>
                          <div class="control-group">          
                              <!-- Username -->
                            <label class="control-label"  for="username">Username</label>
                            <div class="controls">
                              <input type="text" id="username" name="username" placeholder="" class="input-xlarge">
                               <jsp:setProperty name="username" property="*" />        
                           
                           
                            </div>
                          </div>
                          <div class="control-group">
                            <!-- Password-->
                            <label class="control-label" for="password">Password</label>
                            <div class="controls">
                              <input type="password" id="password" name="password" placeholder="" class="input-xlarge">
                               <jsp:setProperty name="password" property="*" /> 
                            </div>
                          </div>
                          <div class="control-group">
                            <!-- Button -->
                            <div class="controls">
                                  <button class="btn btn-success">Login</button> 
                                
                                 <%--   
                                
                              <button class="btn btn-success" onclick ="Validate()">Login</button>
                              
   
                              
                                //set variables
                               
                                boolean loggedIn = false;
                                

                                //check user exisits with db method userExsists
                               
                               
                               public class Validate(){
                               
                                if (exsist = true){
                                    
                                    db.createConnection();
                                    UserLoginList userLoginList = db.selectUserByUsername(request.getParameter("orderUser"));
                                    db.closeConnection();
                                    for (int pos = 0; pos < userLoginList.size(); pos ++) {
                                    UserLoginDetails user = userLoginList.retrieveUserAt(pos);
                                    }
                                    
                                    
                              
                                    //compare user and password in userLoginList with declared values
                                
                                    if ((pageUsername == username && pagePassword == password && pageRole == role) {
                                   
                                    loggedIn = true; 
                               
                                    if (role = Admin){
                                    //redirect admin pages. 
                                    %>
                                    <a href="Admin/newClub.jsp"></a>
                                    %>
                                       
                                    }
                                    else if (role = Club) { 
                                    //redirect club pages 
                                    %>
                                    <a href="Orders/clubAddOrder.jsp"></a>
                                    <%
                                    }
                                    else if (role = Member){
                                    //redirect member pages
                                    %>
                                    <a href="Members/memberShowClubMembers.jsp"></a>
                                    <%
                                    }
                                    else if (role = Donor){
                                    //redirect donor pages
                                    %>
                                     <a href="Donors/donateMake.jsp"></a>
                                     <%
                                    }
                                    else if (role = Supplier){
                                    
                                    //redirect supplier pages 
                                    %>
                                    <a href="Suppliers/supplierShowStock.jsp"></a>
                                    <%
                                    }
                                    
                                    }
                               }
                                    
                               else{
                               
                               %>
                               //redirect to home page. 
                               <%
                               }
                             
                               }
                               --%>
                              
                            
                              
                              
                              
                              <button class="btn btn-warning">Logout</button>
                          </form>
                            
                            </div>
                          </div>
                        </fieldset>
                      </form>                
                    </div>
                   
                </div>
              </div>
            </div>
        </div>
	</div>
</div>

            <div class="hero-unit">
                 
               
                
             
                
                 <a href="About/aboutUs.jsp" class="btn btn-medium btn-warning">Contact Us</a>
                    
           </div>   
   </body>
</html>

