
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

<%@page import="StockAdmin.*" %>
<%@page import="AccessDB.Tools" %>
<jsp:useBean id="db" scope="page" class="AccessDB.DBConnector" />
<jsp:useBean id="stock" scope="page" class="StockAdmin.StockDetails" />
<jsp:useBean id="order" scope="session" class="OrderAdmin.Order" />
<jsp:useBean id="orderItem" scope="page" class="OrderAdmin.OrderItem" />
<jsp:setProperty name="orderItem" property="*" />


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
                    <h1 class="muted">Food Bank Club: </h1>
                    <h1 class="muted">Add to Order</h1>
                </div>

                <div class="span4 offset2" style="margin-top:15px;">
                <div id="browse_app">  
                    <a class="btn pull-right" href="../loginJoinup.jsp">Log out</a>
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
                                            <a href="clubShowOrders.jsp">All Orders</a>
                                        </li>

                                        <li>
                                            <a href="clubEditDetail.jsp">Edit Club Details</a>
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
                    </ul>
                </div>
            </div>
        </div>
      </div>
    </div>
  </div>
            

            
        <div class="hero-unit">  
            Our stock rules are simple, if the item is food and free from VAT we sell it.<br>
            The great majority of these food items are the standard food products which 
            every healthy family needs. <br>
            All deliveries are offered free of charge. This helps to 
            promote local produce keeping money spent in your local community.<br>
            Lookout for great bulk purchase deals from your local food suppliers and some big brands too!<br>
        </div>
            
            <%
                if (orderItem.getQuantity() > 0)
                    order.addToOrder(orderItem);
                else 
                    out.print("You have not specified the quantity!<br>");
        %>
        
        <h3>Your current shopping cart</h3>
        <hr><br>

        <%
            if (order.isEmpty()) { // cart is empty
        %>

        You have no items in your cart

        <%
            }  else {  // cart has items
        %>

        <table width="75%" border=0>
            <tr>
                <th width="70%" align="left"><b>Item Name</b></th>
                <th width="10%" align="center"><b>Price</b></th>
                <th width="10%" align="center"><b>Quantity</b></th>
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
                    <b>Product ID:     </b>  <%= stock.getProductID()%> <br>
                    <b>Category:       </b>  <%= stock.getProdCategory()%>  <br>
                    <b>Item Name:      </b>  <%= stock.getProdName()%> <br>
                    <b>:Weight (in KG):</b>  <%= stock.getProdWeight()%>  <br>
                    <b>Price:   £      </b>  <%= stock.getProdPrice()%> <br>
                    <b>Description:    </b>  <%= stock.getProdDescription()%> <br>
            </tr>
                </td>
                <td align="center">&pound;
                    <%=orderItem.getPrice()%>
                </td>
                <td align="center">
                    <%=orderItem.getQuantity()%>
                </td>
                <td align="right">
                    &pound;
                    <%= Tools.round(orderItem.itemTotal())%>
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
                <td align="right">
                    &pound;<%= Tools.round(order.orderTotal())%>
                </td>
            </tr>

            <%
                } // end else
            %>

        </table>
        <hr><br>
        <a href="NewOrder.jsp">Continue shopping </a><br>
        <a href="../Order/PlaceOrder.jsp">Proceed to checkout</a>
<div class="hero-unit">     
  <div class="row">
    <div class="col-lg-4">
      <div class="col-md-3">
          Check our in stock product with the button below, join a club and start saving.<br>
        <a href="../../index.jsp" class="btn btn-medium btn-warning">Home</a>  
        <a href="../loginJoinup.jsp" class="btn btn-medium btn-success">Join Us</a>  
        <a href="stockShowAllItems.jsp" class="btn btn-medium btn-success">In Stock Now!</a>  
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
