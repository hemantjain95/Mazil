<!-- The MIT License (MIT)

Copyright (c) IIIT-DELHI 
authors:
HEMANT JAIN "hjcooljohny75@gmail.com"
ANIRUDH NAIN 


Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page import="in.ac.iiitd.mazil.Tdbquery"  %>
 <%@page import="java.io.*" %>   
 <%@page import="java.text.*" %>
 <%@page import="java.util.*" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="ico/E-Mail.ico">
<title>Mazil</title>
<% String s;
Tdbquery dem = new Tdbquery();
Tdbquery de = new Tdbquery();
Tdbquery d = new Tdbquery();
String[] id =new String[1];
String[] dat =new String[1];
String[] nam =new String[1];
s=request.getParameter("itemId");
System.out.println(s);
s=s.replace(" ","+");
System.out.println("SELECT ?x WHERE { ?y <MESSAGEID:> '"+s+ "' . ?y <SUB:> ?x} LIMIT 1 ");
dem.mai("SELECT ?x WHERE { ?y <MESSAGEID:> '"+s+ "' . ?y <SUB:> ?x} LIMIT 1 ");
id[0]=Tdbquery.result[0];
out.println("SUBJECT:"+id[0]+"<br>");
System.out.println("SELECT ?x WHERE { ?y <MESSAGEID:> '"+s+ "' . ?y <FROM:> ?x} LIMIT 1 ");
dem.mai("SELECT ?x WHERE { ?y <MESSAGEID:> '"+s+ "' . ?y <FROM:> ?x} LIMIT 1 ");
id[0]=Tdbquery.result[0];
out.println("FROM:"+id[0]+"<br>");
dem.mai("SELECT ?x WHERE { ?y <MESSAGEID:> '"+s+ "' . ?y <DATE:> ?x} LIMIT 1 ");
id[0]=Tdbquery.result[0];
if(!id[0].equals("hi")){
id[0] = id[0].substring(0, Math.min(id[0].length(), 25));
SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssX");
Date date = formatter.parse(id[0]);
SimpleDateFormat formatte = new SimpleDateFormat("dd/MM/yyyy HH:mm");

id[0]=formatte.format(date);}
out.println("DATE:"+id[0]+"<br>");
dem.mai("SELECT ?x WHERE { ?y <MESSAGEID:> '"+s+ "' . ?y <CONTENT:> ?x} LIMIT 1 ");
id[0]=Tdbquery.result[0];
out.println("CONTENT:"+id[0]+"<br>");



%>
</head>
<body>

</body>
</html>