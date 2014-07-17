<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ page import="java.io.*,java.util.*" %>
    <%@ page import="java.io.*"%>
	<%@ page import="javax.servlet.*"%>
	<%@ page import="javax.servlet.http.*"%>
	<%
	Cookie cookie = null;
	  Cookie[] cookies = null;
    // Get an array of Cookies associated with this domain
    cookies = request.getCookies();
    response.setContentType("text/html");
    if( cookies != null ){
        out.println("<h2> Cookies Name and Value</h2>");
        for (int i = 0; i < cookies.length; i++){
           cookie = cookies[i];
           if(cookie.getName( ).equals("ID")||cookie.getName( ).equals("PASS")){
                cookie.setMaxAge(0);
                response.addCookie(cookie);
                out.print("Deleted cookie : " + 
                             cookie.getName( ) + "<br/>");
           }
           out.print("Name : " + cookie.getName( ) + ",  ");
           out.print("Value: " + cookie.getValue( )+" <br/>");
        }
     }else{
         out.println(
           "<h2>No cookies founds</h2>");
     }
   String site ="index.jsp";
	   response.setStatus(response.SC_MOVED_TEMPORARILY);
	   response.setHeader("Location", site);
    
	
	
	%>
</head>
<body>

</body>
</html>