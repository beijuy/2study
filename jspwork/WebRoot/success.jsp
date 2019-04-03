<%@page import="bean.User"%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Success</title>
</head>

<body>
<%
	
	%>
	<% 
 		
	%>
	<h1>你好！<%=user.getUsername()%></h1>
	<a href="success.jsp?deleteAll=1">注销</a>
	<% 
		}else{
		//网页重定向
	   //response.sendRedirect("index.jsp");
	  
	%> <script>window.location.href='WebRoot\index.jsp'</script>
	<%
		}
	%>
	<a href="WebRoot\talk.jsp">进入讨论区</a>
</body>
</html>
