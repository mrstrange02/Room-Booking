<%@include file="db_con.jsp"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Room Booking</title>
</head>
<style>
    form{
        margin-bottom : 20px;
    }
</style>
<body>
<center>
<div   style="border: 2px solid blue">
    <h3>Rooms</h3>
       
            
<%
try {

    String sql = "SELECT * FROM rooms ";
    rs = stmt.executeQuery(sql);
    
    while (rs.next()) {
        String room_number=null;
        int roomId = rs.getInt("id");
        String availability = rs.getString("availability");
        room_number = rs.getString("room_number");
%>
   
         
         
<%
        if("0".equals(availability)){
%>
        <form  action="book.jsp" >
        
            <table border="1">
            <tr><th>
                <input type="hidden" name="room_number" value="<%= room_number%>">
                   
                <button >
                    <img src="images/vacant.png" alt="" width="80px"   id="image" >
                   
                </button>
            </th>
            
            
            <tr>
                <td><%= rs.getString("room_number") %></td>
            </tr>
            
            <tr>
<%
            if("0".equals(availability)){
                out.println("<td>Vacant</td>");
            }
            
            else{
                out.println("<td>Booked</td>");
            }

%>
            </tr>
            
            </table>
        </form>

<%
        }

        else{
%>
        <form action="vacant.jsp" >
        
            <table border="1">
            <tr><th>
                <input type="hidden" name="room_number" value="<%= room_number%>">
                   
                <button >
                    <img src="images/img.jpeg" alt="" width="80px"  id="image" >
                    
                </button>
            </th>
            </tr>
            <tr>
                <td><%= rs.getString("room_number") %></td>
            </tr>
            <tr>
                <%
                if("0".equals(availability)){
                    out.println("<td>Vacant</td>");
                }
                else{
                    out.println("<td>Booked</td>");
                }

                %>
            </tr>
            </table>
        </form>
<%
        }
%>
        
<%
    }
%>

<%
rs.close();
} catch (Exception e) {
    out.println("Error: " + e.getMessage());
} finally {
    try {
        if (stmt != null) stmt.close();
        if (con != null) con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
}
%>



</div>       
</center>
</body>
</html>
