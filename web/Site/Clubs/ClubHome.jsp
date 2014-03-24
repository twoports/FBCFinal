<%-- 
    Document   : index
    Created on : 12-Jan-2014, 10:20:08
    Author     : MacBootCamp
--%>

<%@page import="ClubAdmin.ClubDetails"%>
<%@page import="ClubAdmin.ClubList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="db" scope="page" class="AccessDB.DBConnector" />
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
        <title>FoodBankClub Clubs Home</title>
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
                                    <h1 class="muted">Club Home</h1>
                                </div>

                                <div class="span4 offset2" style="margin-top:15px;">
                                    <div id="browse_app">  
                                        <a class="btn pull-right " href="../loginJoinup.jsp">Logout</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="navbar">
                            <div class="navbar-inner">
                                <div class="container">
                                    <ul class="nav">
                                        
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <h2>Club Details</h2>
                <!-- Club ID Display-->
        
        <form name="sortdata" method="get" action="ClubHome.jsp">
        </form>
        
        <p/>
        <a href="../Order/NewOrder.jsp"> Add new Order</a>
        <p/>

        <%
            db.createConnection();
            ClubList clubList = db.selectAllClubs(request.getParameter("orderClubs"));
            db.closeConnection();
            for (int pos = 0; pos < clubList.size(); pos ++) {
                ClubDetails club = clubList.retrieveClubAt(pos);
        %>  
        
        <table border=1 width="300%">
        <tr>
            <th>Club</th>
            <th>Action</th>
        </tr>

        <tr>
            <td width="50%">
                <b><%= club.getClubName()%></b>
                <b><%= club.getClubStreetAddr()%></b>
                <b><%= club.getClubTown()%></b>
                <b><%= club.getClubCounty()%></b>
                <b><%= club.getClubPostCode()%></b>
                <b><%= club.getClubTelNum()%></b>
                <b><%= club.getClubEmail()%></b>
            </td>
            <td width="15%" align = "center">
                <a href="clubEditDetail.jsp=<%= club.getClubCode() %>"> edit</a>
            </td>
        </tr>

        <%
             } // end for
        %>

        </table>
     
        <p/>
        
     </div>
        </div>
      
  </body>
</html>

}
