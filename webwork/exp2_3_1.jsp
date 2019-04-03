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
        <%
        request.setCharacterEncoding("utf-8");
        String name = request.getParameter("name");
        out.print(name+" ");
        String sex = request.getParameter("sex");
        out.print(sex+" ");
        String[] hobby = request.getParameterValues("hobby");
	    for(int i=0;i<hobby.length;i++)
        {
		    out.print(hobby[i]);
	    }
        String word = request.getParameter("word");
        out.print(word+" ");
        %>
    </form>
    </body>
</html>