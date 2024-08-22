<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    String room=request.getParameter("room_number");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Booking</title>
</head>
<body>
    <center border="1">
        <form action="bookAction.jsp" method="post" width="200px" style="border:2px solid grey">
            <h2>Book</h2>
            Room Number: <input type="text" name="roomno" value="<%= room %>"  readonly/>
            <br>
            <br>
            Name: <input type="text" name="name" value="pavan" required /><br />
            
            <br><br>
            <input type="submit" value="Book" />
            <br>
            <br>
        </form>
    </center>
</body>
</html>
