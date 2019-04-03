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
<form method="post">
       用户名
       	<input type="text" style="height:20px;width:100px;" name="user" />
       密码
       	<input type="password" style="height:20px;width:100px;" name="password" />
        <br />
       	<input type="submit" value="登陆">	
    	<input type="button" value="注册">
		<%
		request.setCharacterEncoding("utf-8");
    	String user = request.getParameter("user");
		String password = request.getParameter("password");
		if(user!=""&&password!=""&&user!=null&&password!=null)
			response.sendRedirect("/webwork/exp2_3.jsp");
		%>
</form>
</body>
</html>
//**DIEA
