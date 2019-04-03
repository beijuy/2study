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
    <% for(int i=1;i<10;i++)
    {
        for (int j=1;j<=i;j++)
        {
            out.print(i+"*"+j+"="+i*j+" ");
        }
    %>
        <br/>
  <%}%>
    </body>
</html>