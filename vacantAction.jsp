<%@include file="db_con.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    

String roomno = request.getParameter("roomno");

try {
    String sql1 = "UPDATE rooms SET availability='0' WHERE room_number='" + roomno+ "' ";
    stmt.executeUpdate(sql1);


    response.sendRedirect("panel.jsp");
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
        }
%>

