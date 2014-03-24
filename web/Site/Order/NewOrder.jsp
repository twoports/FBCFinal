
<%@page import="StockAdmin.*"%>
<jsp:useBean id="db" scope="page" class="AccessDB.DBConnector" />
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


    <head>
        <title>FoodBankClub Our Stock</title>
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
                    <h1 class="muted">New Order</h1>
                </div>

                <div class="span4 offset2" style="margin-top:15px;">
                <div id="browse_app">  
                    <a class="btn pull-right"href="../loginJoinup.jsp">Log out</a>
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
     

    <br><a href="ViewCart.jsp">View your shopping cart</a><br><br>
        <table border=0 width="75%">

        <%
            db.createConnection();
            StockList stockList = db.selectAllStock(request.getParameter("orderStock"));
            db.closeConnection();
            for (int pos = 0; pos < stockList.size(); pos ++) {
                StockDetails stock = stockList.retrieveStockat(pos);
        %>  

            <tr>
                <td width="20%" align = "center">
                    <form method="get" action="AddToOrder.jsp" >
                        <input type="hidden" name="ProductID" 
                               value="<%= stock.getProductID()%>" >
                        <input type="hidden" name="price"
                               value="<%= stock.getProdPrice()%>" >
                        <input type="text" size="2" name="quantity" value="0" >
                        &nbsp;
                        <input type="submit" value= "Add to order" >
                    </form>
                </td>
                <td width="80%">
                    
                    <b>Product ID:     </b>  <%= stock.getProductID()%> <br>
                    <b>Category:       </b>  <%= stock.getProdCategory()%>  <br>
                    <b>Item Name:      </b>  <%= stock.getProdName()%> <br>
                    <b>:Weight (in KG):</b>  <%= stock.getProdWeight()%>  <br>
                    <b>Price:   £      </b>  <%= stock.getProdPrice()%> <br>
                    <b>Description:    </b>  <%= stock.getProdDescription()%> <br>
                 </br>
                </td>
            </tr>

            <%
                } // end for
            %>

        </table>
        <br><a href="ViewCart.jsp">View your order</a><br>
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
