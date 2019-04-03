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
    <form name="form">
    	<input type="text" name="words">
    	<input type="submit" value="提交">	
    </form>
	<%
	String words =request.getParameter("words");
    if(words!=null)
    {
        String[] a=words.split(" ");
	    for(int i=a.length-1;i>=0;i--)
            out.print(a[i]+" ");
    }
    %>
    </form>
    </body>
</html>