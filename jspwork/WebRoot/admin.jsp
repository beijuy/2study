<%@page import="dao.UserDao"%>
<%@page import="bean.User"%>
<%@page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'admin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <table>
    		<tr>
    			<td>用户名</td>
    			<td>密码</td>
    		</tr>
    		<%
    			//获取所有用户
    	 	%>
    	 
    		<tr>
    			<td><%=a.getUsername() %></td>
    			<td><%=a.getPassword() %></td>
    			<td><a href="update.jsp?username=<%=a.getUsername()%>&password=<%=a.getPassword()%>">修改</a></td>
    			<td><a href="Delete?username=<%=a.getUsername()%>">删除</a></td>
    		</tr>
    		<% } %>
    	</table>
  </body>
</html>
