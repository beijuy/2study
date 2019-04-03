<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<a href="success.jsp?deleteAll=1">注销</a>
<form action="AddMessage" method="post">
<input type="text" name="message" id="inputText">
<input type="submit" value="发表" id="submitBtn"/>
</form>
<div id="right" style="text-align: center;">
	<%
		
	%>
	<div id="messageDiv">
		<p><strong><%%>: </strong><%%></p>
		<p style="color: #FF0000"><%%></p>
	<hr style="height: 2px;border:none;border-top:2px solid #000;"/>
	</div>
	<%
		
	%>
</div>
</body>
</html>
