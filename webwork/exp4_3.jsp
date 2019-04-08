<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'exp4_3.jsp' starting page</title>
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
<table border="1" width="80%">
<tr><td>编号</td><td>留言者</td><td>留言信息</td>
<td>时间</td><td>操作</td></tr>
<%
     int pageSize = 4;
     int rowCount;   //总行数
     int pageCount;  //总页数
     int pageNo;     //当前页
     String strPage = request.getParameter("page");
     if (strPage==null)
     	pageNo = 1;
     else {
        pageNo = Integer.parseInt(strPage);
        if (pageNo<1)
           pageNo = 1;
     }   
		Class.forName("com.mysql.jdbc.Driver");
     	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp?useUnicode=true&characterEncoding=utf-8","root","3310219179");
		Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
     	ResultSet rs = stmt.executeQuery("select * from jsp4 order by sj desc");
     	rs.last();
     	rowCount = rs.getRow();
    	pageCount = (int)Math.ceil((double)rowCount/(double)pageSize);
		rs.absolute((pageNo-1)*pageSize+1);
	 int i=0;
	 do{%>
<tr>
<td><%=rs.getString("id") %></td>
<td><%=rs.getString("lyz") %></td>
<td><%=rs.getString("xx") %></td>
<td><%=rs.getString("sj") %></td>
<td><a href="delete.jsp?id=<%=rs.getString("id")%>">删除</a>
<a href="update.jsp?id=<%=rs.getString("id")%>">编辑</a></td>
</tr>
<% 	 
     i++;
	 }while(i<pageSize&&rs.next());
 %>

</tbody></table><br><br>第<%=pageNo %> 页&nbsp;&nbsp; 共<%=pageCount %> 页
<%if (pageNo<pageCount){ %>
<A href="MyJsp0402_3.jsp?page=<%=pageNo+1 %>">下一页</A>
<%} %>
<%if (pageNo>1){ %>
<A href="MyJsp0402_3.jsp?page=<%=pageNo-1 %>">上一页</A>
<%} 
 rs.close();
 stmt.close();
 con.close();%>


  </body>
</html>