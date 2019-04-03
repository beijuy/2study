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
    <form action="exp2_3_1.jsp" method="post">
        Your name:
        <input type="text" name="name">
        Your sex:
        <select name="sex">
            <option value="male">male</option>
            <option value="female">female</option>
        </select>
        Your hobby:
        <input type="checkbox"name="hobby" value="basketball">basketball
        <input type="checkbox"name="hobby" value="soccer">soccer
        <input type="checkbox"name="hobby" value="pingpong">pingpong
        Your word:
        <input type="text" name="word">
        <input type="submit" value= "提交">
        <input type="reset">
    </form>
    
    </body>
</html>