<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>
            exp
        </title>
    </head>
    <body>
    <%
        request.setCharacterEncoding("utf-8");
        String id =request.getParameter("id");
        String type =request.getParameter("type");
        String name =request.getParameter("name");
        String price =request.getParameter("price");
        String num =request.getParameter("num");
        String summary =request.getParameter("summary");
        if(!id.equals(""))
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp?useUnicode=true&characterEncoding=utf-8","root","zml700104");
            Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
            /*add*/
            stmt.executeUpdate("insert into goods(id,type,name,price,num,summary) values('"+id+"','"+type+"','"+name+"','"+price+"','"+num+"','"+summary+"')");
            stmt.close();
            con.close();
            response.sendRedirect("exp3_1.jsp");
        }
        %>
    </body>
</html>