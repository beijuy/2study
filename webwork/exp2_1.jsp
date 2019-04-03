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
    <form action="exp2_1.jsp" method="post" onsubmit="return checkNum()">
        <input type="number" id="num1" name = "num1" value="1">
        <select name="sign" id="sign">
            <option value="+">+</option>
            <option value="-">-</option>
            <option value="*">*</option>
            <option value="/">/</option>
        </select>
        <input type="number" id="num2" name = "num2" value="1">
        <input type="submit" value= "提交">
    </form>
    <%
    request.setCharacterEncoding("utf-8");
    String Snum1 = request.getParameter("num1");
    String Snum2 = request.getParameter("num2");
    String sign = request.getParameter("sign");
    double num1=0;
    double num2=0;
    double result=0;
    if(Snum1!=null&&Snum2!=null)
    {
        num1=Double.parseDouble(Snum1);
        num2=Double.parseDouble(Snum2);
    }
    if(sign!=null)
    {    
        if(sign.equals("+"))
        {
            result=num1+num2;
        }
        if(sign.equals("-"))
        {
            result=num1-num2;
        }
        if(sign.equals("*"))
        {
            result=num1*num2;
        }
        if(sign.equals("/"))
        {
            if(num2!=0)
                result=num1+num2;
        }
        out.println(result);
    }
    %>
    </body>
</html>