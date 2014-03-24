
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="ClubAdmin.ClubDetails" %>

<jsp:useBean id="db" scope="page" class="AccessDB.DBConnector" />


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <h3>Update Club Details</h3>
        <hr>

        <%
        ClubDetails club;    
        String clubCode = request.getParameter("clubCode");
        db.createConnection();
        club = db.selectClubByClubCode(clubCode);
        db.closeConnection();
        %>

        Please make the amendments you require: <br><br>
        <form name="amend" method="post" action="editClub.jsp" >
            <table border="0" cellpadding="10">
                <tr>
                    <td align="right">Club Code</td>
                    <td><input type="text" name="clubCode" size="60" value="<%= club.getClubCode()%>" /></td>
                </tr>
                <tr>
                    <td align="right">Name</td>
                    <td><input type="text" name="clubName" size="60" value="<%= club.getClubName()%>" /></td>
                </tr>
                <tr>
                    <td align="right">Manager First Name</td>
                    <td><input type="text" name="ClubManagerFirstName" size="60" value="<%= club.getClubManagerFirstName()%>" /></td>
                </tr>
                <tr>
                    <td align="right">Manager Last Name</td>
                    <td><input type="text" name="clubManagerLastName" size="60" value="<%= club.getClubManagerLastName()%>" /></td>
                </tr>
                <tr>
                    <td align="right">Email £</td>
                    <td><input type="text" name="clubEmail" size="15" value="<%= club.getClubEmail()%>" /></td>
                </tr>
            </table>
            <input type="submit" name="button" value="Update" />
            <input type="submit" name="button" value="Cancel" />
        </form>
    </body>
</html>

