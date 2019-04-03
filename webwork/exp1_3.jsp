<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>
            exp
        </title>
    </head>
    <body>
    <form name="form" method="post" action="exp1_3.jsp">
        <input type="text" name="name">
        <input type="submit" value="提交">
        <%
            String str=request.getParameter("name");
            request.setCharacterEncoding("gb2312");
            if(str!=null)
            {
                if(str.equals("admin"))
                {
                    out.println("<script language='javascript'>alert('管理员，您好')</script>");
                }
                else
                {
            }
        %>
    </form>
    </body>
</html>