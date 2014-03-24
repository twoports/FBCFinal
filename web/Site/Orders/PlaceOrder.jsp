<%-- 
    Document   : index
    Created on : 12-Jan-2014, 10:20:08
    Author     : MacBootCamp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="OrderAdmin.*" %>

<jsp:useBean id="db" scope="page" class="AccessDB.DBConnector" />
<jsp:useBean id="stock" scope="page" class="StockAdmin.StockDetails" />
<jsp:useBean id="order" scope="session" class="OrderAdmin.Order" />
<jsp:useBean id="orderItem" scope="page" class="OrderAdmin.OrderItem" />
<jsp:setProperty name="orderItem" property="*" />

<%-- 
    if (loggedIn != true && role != Club {
    
     //redirect to home page

     <a href="../../index.jsp"></a>
     }
     else {

     //display page by exit loop

     break;
     } 

--%>
<!DOCTYPE html>

<html>
    <head>
        <title>FoodBankClub Orders</title>
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
                    <h1 class="muted">Food Bank Clubs: Place Order</h1>
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
                             <a href="clubShowDetail.jsp">Club Info</a>
                        </li>
                        
                        <li>
                            <a href="clubEditDetail.jsp">Edit Club</a>
                        </li>

                        <li>
                            <a href="clubMemberAdd.jsp">Add Member</a>
                        </li>
                        
                        <li>
                             <a href="clubMemberDelete.jsp">Delete Member</a>
                        </li>
                        
                        <li>
                             <a href="clubMemberEdit.jsp">Edit Member</a>
                        </li>
                       <%
                if (orderItem.getQuantity() > 0)
                    order.addToOrder(orderItem);
                else 
                    out.print("You have not specified the quantity!<br>");
        %>

        <h3>Your current Food Order</h3>

        <%
            if (order.isEmpty()) { // cart is empty
       
            }  else {  // cart has items
        %>

        <table width="75%" border=0>
            
            <tr>
                <th width="70%" align="left"><b>Item Name</b></th>
                <th width="10%" align="center"><b>Quantity</b></th>
                <th width="10%" align="center"><b>Price</b></th>
                <th width="10%" align="center"><b>Weight</b></th>
                <th width="10%" align="right"><b>Total Price</b></th>
            </tr>

            <%
                db.createConnection();
                for (int i = 0; i < order.size(); i++) {
                    orderItem = order.retrieveItemAt(i);
                    stock = db.selectStockByProductID(orderItem.getProductID());
            %>

            <tr>
                <td align="left">
                    <b>Product ID:</b> <%= stock.getProductID()%> <br>
                    <b>Name:     </b>  <%= stock.getProdName()%>  <br>
                    <b>Category:    </b>  <%= stock.getProdCategory()%> <br>
                    <b>Description:     </b>  <%= stock.getProdDescription()%>  <br>
                    <b>Weight:   </b>  <%= stock.getProdWeight()%> <br>
                    <b>Price:   £</b>  <%= stock.getProdPrice()%> <br>
                    <br>
                </td>
                <td align="center">&pound;
                    <%=orderItem.getPrice()%>
                </td>
                <td align="center">
                    <%=orderItem.getQuantity()%>
                </td>
                
            </tr>

            <%
                    }  // end for
                    db.closeConnection();
            %>

            <tr>
                <td></td>
                <td></td>
                <td align="center">
                    <b>Order<br>total</b>
                </td>
                
            </tr>

            <%
                } // end else
            %>

        </table>
      

                        
                        
                        
                        
                        
          </div>
        </div>
      </div>
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
            
   
   </body>
</html>
