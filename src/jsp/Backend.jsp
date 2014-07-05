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
    <%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ page import="in.ac.iiitd.mazil.Authentication" %>
<%@ page import="in.ac.iiitd.mazil.Emaildownload" %>
<%@ page import="in.ac.iiitd.mazil.Syncdelete" %>

<%
String name=request.getParameter("user");
String pass=request.getParameter("password");
System.out.println(name);
System.out.println(pass);	
Authentication x =new Authentication();
int j=0;
%>
<%! public String[] id =new String[4];%>
<% 
String[] mailauthenticator=new String[2];
id[0]=name;
id[1]=pass;
mailauthenticator[0]=name;
mailauthenticator[1]=pass;
int i=Authentication.mai(mailauthenticator);		//to validate email Id and password
System.out.println("hiii");
System.out.println(i);
String site;
if(i==1)					//if ok then i becomes 1 and redirected to another page
{ 
	site ="gmail_like.jsp?item="+j;
	Thread thread1 = new Thread()
	{
    	public void run()
    	{
		Emaildownload instance1=new Emaildownload();
		id[2]="inbox";
		id[3]="inbox.txt";
		try
		{
			Emaildownload.mai(id);
		}
		catch (Exception e)
		{
    		e.printStackTrace();
  		}
  		finally{}
		System.out.println("Emaildownload inbox Running");


		try
		{
			Emaildownload instance2=new Emaildownload();
			id[2]="[Gmail]/Spam";
			id[3]="Spam.txt";
			Emaildownload.mai(id);
		} 
		catch (Exception e)
		{
			e.printStackTrace();	
		}   
		System.out.println("Emaildownload Spam Running");


		try
		{
			Emaildownload instance3=new Emaildownload();
			id[2]="[Gmail]/Starred";
			id[3]="Starred.txt";
			Emaildownload.mai(id);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}   
		System.out.println("Emaildownload Starred Running");


		try
		{
			Emaildownload instance4=new Emaildownload();
			id[2]="[Gmail]/Drafts";
			id[3]="Drafts.txt";
			Emaildownload.mai(id);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}   
		System.out.println("Emaildownload Drafts Running");
	

		try
		{
			Emaildownload instance5=new Emaildownload();
			id[2]="[Gmail]/Trash";
			id[3]="Trash.txt";
			Emaildownload.mai(id);
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}   
		System.out.println("Emaildownload Trash Running");
		

		try
		{
			Emaildownload instance6=new Emaildownload();
			id[2]="[Gmail]/Sent Mail";
			id[3]="Sent.txt";
			Emaildownload.mai(id);
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}   
		System.out.println("Emaildownload Sent Mail Running");


		try
		{
			Emaildownload instance7=new Emaildownload();
			id[2]="[Gmail]/All Mail";
			id[3]="All.txt";
			Emaildownload.mai(id);
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}   
		System.out.println("Emaildownload All Mail Running");


		try
		{
			Syncdelete instanc1=new Syncdelete();
			id[2]="inbox";
			id[3]="All.txt";
			Syncdelete.mai(id);
		}
		catch (Exception e) 
		{	
			e.printStackTrace();
		}   
		System.out.println("Sync inbox Running");

		try
		{
			Syncdelete instance2=new Syncdelete();
			id[2]="[Gmail]/Starred";
			id[3]="All.txt";
			Syncdelete.mai(id);
		}
		catch (Exception e) 
		{	
			e.printStackTrace();
		}   
		System.out.println("Sync Starred Running");


		try
		{
			Syncdelete instance3=new Syncdelete();
			id[2]="[Gmail]/Spam";
			id[3]="All.txt";
			Syncdelete.mai(id);
		}
		catch (Exception e) 
		{	
			e.printStackTrace();
		}   
		System.out.println("Sync Spam Running");


		try
		{
			Syncdelete instance4=new Syncdelete();
			id[2]="inbox";
			id[3]="[Gmail]/Drafts";
			Syncdelete.mai(id);
		}
		catch (Exception e) 
		{	
			e.printStackTrace();
		}   
		System.out.println("Sync Drafts Running");


		try
		{
			Syncdelete instance5=new Syncdelete();
			id[2]="inbox";
			id[3]="[Gmail]/Sent Mail";
			Syncdelete.mai(id);
		}
		catch (Exception e) 
		{	
			e.printStackTrace();
		}   
		System.out.println("Sync Sent Mail Running");
	

		try
		{
			Syncdelete instance6=new Syncdelete();
			id[2]="inbox";
			id[3]="[Gmail]/All Mail";
			Syncdelete.mai(id);
		}
		catch (Exception e) 
		{	
			e.printStackTrace();
		}   
		System.out.println("Sync All Mail Running");


		try
		{
			Syncdelete instance7=new Syncdelete();
			id[2]="inbox";
			id[3]="[Gmail]/Trash";
			Syncdelete.mai(id);
		}
		catch (Exception e) 
		{	
			e.printStackTrace();
		}   
		System.out.println("Sync Trash Running");
		}  
	};
	thread1.start();
}
else
	site = "index.jsp";     		//if password authentication fails then redirected to first page
// New location to be redirected
response.setStatus(response.SC_MOVED_TEMPORARILY);
response.setHeader("Location", site);%>
<title>Insert title here</title>
</head>
<body>

</body>
</html>