<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
    <form method="POST" name="frmLogin" action="LoginServlet">
        <h1 align="center">用户登录</h1>
        <br /> 账号：<input type="text" name="username" size="20" maxlength="20" /><br>
        密码：<input type="password" name="pwd" size="20" maxlength="20" /><br>

        <input type="submit" name="Submit" value="提交"
            onClick="return validateLogin()" /> <input type="reset" name="Reset"
            value="重置" />

    </form>
    <script language="javascript">
   function validateLogin(){
    var sUserName = document.frmLogin.username.value ;
    var sPassword = document.frmLogin.password.value ;
    if (sUserName ==""){
     alert("请输入用户名!");
     return false ;
    }
    
    if (sPassword ==""){
     alert("请输入密码!");
     return false ;
    }
   }
  </script>
  <%
  package me.letterwish.servlet;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub

        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        String username = request.getParameter("username");
        String pwd = request.getParameter("pwd");
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("找不到驱动 ");
        }
        // 连接URL                    服务器地址                       端口号    数据库名
        String url = "jdbc:mysql://120.25.248.101:3306/letterwish";
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {                                                    //数据可的登录名  登录密码
            conn = (Connection) DriverManager.getConnection(url, "root", "root");
            stmt = (Statement) conn.createStatement();
            // SQL语句
            String sql = "select * from users where account='" + username + "' and pwd= '" + pwd + "'";
            rs = stmt.executeQuery(sql);// 返回查询结果
        } catch (SQLException e) {
            e.printStackTrace();
        }
        HttpSession session = request.getSession();
        session.setAttribute("username", username);
        try {
            if (rs.next()) {
                // 如果记录集非空，表明有匹配的用户名和密码，登陆成功
                response.sendRedirect("home.jsp");
            } else {
                session.setAttribute("message", "用户名或密码不匹配。");
                System.out.println("XXXXXXXXXX");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

}
  %>
</body>
</html>