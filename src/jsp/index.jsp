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
<!DOCTYPE html>
<html lang="en">
 <%@ page import="java.io.*,java.util.*" %>
    <%@ page import="java.io.*"%>
	<%@ page import="javax.servlet.*"%>
	<%@ page import="javax.servlet.http.*"%>
	<%int flag=0;
	


	String test=(String)session.getAttribute("test");
	System.out.println(test);
	String id="",pass="";
	Cookie cookie = null;
	  Cookie[] cookies = null;
    // Get an array of Cookies associated with this domain
    cookies = request.getCookies();
    if( cookies != null ){
        System.out.println("Found Cookies Name and Value");
        for (int i = 0; i < cookies.length; i++){
           cookie = cookies[i];
           System.out.println("Name : " + cookie.getName( ));
           System.out.println("Value: " + cookie.getValue( ));
           if(cookie.getName().equals("ID"))
           {	id=cookie.getValue( );
           		flag=1;
           }
           if(cookie.getName().equals("PASS"))
           {	pass=cookie.getValue( );
           		
           }
        }
        String site;
        if(flag==1)
        { 	
 	   site ="Backend.jsp?user="+id+"&password="+pass;
 	   response.setStatus(response.SC_MOVED_TEMPORARILY);
 	   response.setHeader("Location", site);
        }
     }else{
         System.out.println("no cookies");
     }
    	%>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Mazil</title>
    <link rel="shortcut icon" href="ico/E-Mail.ico">
    <!-- Bootstrap Core CSS -->
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Fonts -->
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>

    <!-- Custom Theme CSS -->
    <link href="css/grayscale.css" rel="stylesheet">
    <link href="css/login.css" rel="stylesheet">
    <link href="css/circular.css" rel="stylesheet">
</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">

    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="#page-top">
                    <i class="fa fa-play-circle"></i>  <span class="light">Home</span>
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="page-scroll">
                        <a href="#about">About</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#developers">Developers</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#contact">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <section class="intro">
        <div class="intro-body">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <h4 class="brand-heading"> Mazil</h4>
                        <div class="login">
                        <form name="myForm" action="Backend.jsp" method="post" >
                        <input type="text" placeholder="username" name="user"><br>
                        <input type="password" placeholder="password" name="password"><br>
                        
                        <a href="gmail_like.html"><input type="submit" value="Login"></a>
                        </form>
                        </div>
                        
                        <p class="intro-text">A free, premium quality, responsive , reliable Mail Search Platform.</p>
                        <div class="page-scroll">
                            <a href="#about" class="btn btn-circle">
                                <i class="fa fa-angle-double-down animated"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="about" class="container content-section text-center" style="height:750px;">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>About Mazil</h2>
                <p>Mazil is a seach tool to make your life easier and simpler.No more wasting your time in finding emails ,Mazil provides you extensive mail search platform to perform complex queries .</p>
                <p>It uses Faceted Search with SPARQL to give faster search results when searching E-Mails.</p>
               
            </div>
        </div>
    </section>

    <section id="developers" class="content-section text-center">
        <div style="height:750px;padding-top:50px;">
            <div class="container">
                <div class="col-lg-8 col-lg-offset-2">
                    <h1 style="margin-top:-175px">Developers</h1>
                  <div class="circular">
                    <div style="padding-top:35px;padding-left:200px;font-size:30px;white-space: nowrap;">
                    Anirudh Nain<br>
                    <p>LNMIIT</p>
                    </div>
                </div>
                   <div class="circular-1"></div>
                    <div style="margin-top:-140px;padding-left:700px;font-size:30px;white-space: nowrap;">
                    Hemant Jain<br>
                    <p>LNMIIT</p>
                    </div>
                 </div>
            </div>
        </div>
    </section>

    <section id="contact" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>Contact And Feedback</h2>
                <p>Feel free to email us to provide some feedback on our WEBAPP, give us suggestions for new features and ideas, or to just say hello!</p>
                <p>hemantjain.y12@lnmiit.ac.in</p>
                <ul class="list-inline banner-social-buttons">
                    <li><a href="#" class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i> <span class="network-name">Twitter</span></a>
                    </li>
                    <li><a href="https://github.com/COOLHEMANTJAIN/MAILDETECTIVE" class="btn btn-default btn-lg"><i class="fa fa-github fa-fw"></i> <span class="network-name">Github</span></a>
                    </li>
                    <li><a href="#" class="btn btn-default btn-lg"><i class="fa fa-google-plus fa-fw"></i> <span class="network-name">Google+</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </section>

    <div id="map"></div>

    <!-- Core JavaScript Files -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Google Maps API Key - You will need to use your own API key to use the map feature -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA&sensor=false"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/grayscale.js"></script>

</body>

</html>
