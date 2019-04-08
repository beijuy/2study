<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'exp4_2.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  <body>
  <% 
	request.setCharacterEncoding("utf-8");
	String lyz =request.getParameter("lyz");//留言者
	String xx =request.getParameter("xx");//信息
	if(!lyz.equals("")&&!xx.equals("")){
	     Class.forName("com.mysql.jdbc.Driver");
	     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp?useUnicode=true&characterEncoding=utf-8","root","zml700104");
	     Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	     stmt.executeUpdate("insert into jsp4(lyz,xx) values('"+lyz+"','"+xx+"')");//填的是表名	     
	     stmt.close();
	     con.close();
	     response.sendRedirect("exp4_1.jsp");
     }
     else
     response.getWriter().print("<script>alert('信息不完整');window.location.href='exp4_1.jsp'</script>");
  %>
  </body>
</html>
