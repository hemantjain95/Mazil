  <!-- The MIT License (MIT)

Copyright (c) IIIT-DELHI 
authors:
mentor:
Debajyoti Bera dbera@iiitd.ac.in

authors:
HEMANT JAIN "hemantjain.y12@lnmiit.ac.in"
ANIRUDH NAIN "anirudh.y12@lnmiit.ac.in"
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
  <head>
  <% String[] currentattributes=new String[30];
  String[] previousattributes=new String[30];
  String[] attributesnames=new String[30];
  String[] matter=new String[30];

  	  previousattributes[0]=(String)session.getAttribute("previousattributes0");
  previousattributes[1]=(String)session.getAttribute("previousattributes1");
  previousattributes[2]=(String)session.getAttribute("previousattributes2");
  previousattributes[3]=(String)session.getAttribute("previousattributes3");
  previousattributes[4]=(String)session.getAttribute("previousattributes4");
  previousattributes[5]=(String)session.getAttribute("previousattributes5");
  previousattributes[6]=(String)session.getAttribute("previousattributes6");
  previousattributes[7]=(String)session.getAttribute("previousattributes7");
  previousattributes[8]=(String)session.getAttribute("previousattributes8");
  previousattributes[9]=(String)session.getAttribute("previousattributes9");
  previousattributes[10]=(String)session.getAttribute("previousattributes10");
  previousattributes[11]=(String)session.getAttribute("previousattributes11"); 
 previousattributes[12]=(String)session.getAttribute("previousattributes12");
 previousattributes[13]=(String)session.getAttribute("previousattributes13");
  previousattributes[14]=(String)session.getAttribute("previousattributes14");
  previousattributes[15]=(String)session.getAttribute("previousattributes15");
  previousattributes[16]=(String)session.getAttribute("previousattributes16");
  previousattributes[17]=(String)session.getAttribute("previousattributes17");
  previousattributes[18]=(String)session.getAttribute("previousattributes18");
  previousattributes[19]=(String)session.getAttribute("previousattributes19");
  previousattributes[20]=(String)session.getAttribute("previousattributes20");
  previousattributes[21]=(String)session.getAttribute("previousattributes21");
  previousattributes[22]=(String)session.getAttribute("previousattributes22");
  previousattributes[23]=(String)session.getAttribute("previousattributes23");
  previousattributes[24]=(String)session.getAttribute("previousattributes24");
  previousattributes[25]=(String)session.getAttribute("previousattributes25");
  previousattributes[26]=(String)session.getAttribute("previousattributes26");
  previousattributes[27]=(String)session.getAttribute("previousattributes27");
  previousattributes[28]=(String)session.getAttribute("previousattributes28");
  
  attributesnames[0]="subject";
  //System.out.println(subject";
  attributesnames[1]="subjectand";
  //System.out.println(subjectand";
  attributesnames[2]="subjector";
  //System.out.println(subjector";
  attributesnames[3]="content";
  //System.out.println(content";
  attributesnames[4]="contentand";
  //System.out.println(contentand";
  attributesnames[5]="contentor";
  //System.out.println(contentor";
  attributesnames[6]="attachment";
  //System.out.println(attachment";
  attributesnames[7]="attachmentand";
  //System.out.println(attachmentand";
  attributesnames[8]="attachmentor";
  //System.out.println(attachmentor";
  attributesnames[9]="from";
  //System.out.println(from";
  attributesnames[10]="fromand";
  //System.out.println(fromand";
  attributesnames[11]="fromor";
  //System.out.println(fromor";
  attributesnames[12]="to";
  //System.out.println(to";
  attributesnames[13]="toand";
  //System.out.println(toand";
  attributesnames[14]="toor";
  //System.out.println(toor";
  attributesnames[15]="reply";
  //System.out.println(reply";
  //attributesnames[16]="replyand";
  ///System.out.println(replyand";
  ///attributesnames[17]="replyor";
  //System.out.println(replyor";
  attributesnames[18]="cc";
  //System.out.println(cc";
  attributesnames[19]="ccand";
  //System.out.println(ccand";
  attributesnames[20]="ccor";
  //System.out.println(ccor";
  attributesnames[21]="bcc";
  //System.out.println(bcc";
  attributesnames[22]="bccand";
  //System.out.println(bccand";
  attributesnames[23]="bccor";
  //System.out.println(bccor";
  attributesnames[24]="date";
  //System.out.println(date";
  attributesnames[25]="dateand";
  //System.out.println(dateand";
  attributesnames[26]="dateor";
  //System.out.println(dateor";
  attributesnames[27]="hasattachment";
  //System.out.println(dateor";
   attributesnames[28]="haslink";
  


  
  /*
	for(int m=0;m<28;m++)
	{System.out.println(currentattributes[m]);
	
	}*/
  String subquery;
  subquery=request.getParameter("sub");
  if(subquery!=null)
	  System.out.println("USE THIS"+subquery);
  currentattributes[0]=request.getParameter("subject");
  //System.out.println(subject);
  currentattributes[1]=request.getParameter("subjectand");
  //System.out.println(subjectand);
  currentattributes[2]=request.getParameter("subjector");
  //System.out.println(subjector);
  currentattributes[3]=request.getParameter("content");
  //System.out.println(content);
  currentattributes[4]=request.getParameter("contentand");
  //System.out.println(contentand);
  currentattributes[5]=request.getParameter("contentor");
  //System.out.println(contentor);
  currentattributes[6]=request.getParameter("attachment");
  //System.out.println(attachment);
  currentattributes[7]=request.getParameter("attachmentand");
  //System.out.println(attachmentand);
  currentattributes[8]=request.getParameter("attachmentor");
  //System.out.println(attachmentor);
  currentattributes[9]=request.getParameter("from");
  //System.out.println(from);
  currentattributes[10]=request.getParameter("fromand");
  //System.out.println(fromand);
  currentattributes[11]=request.getParameter("fromor");
  //System.out.println(fromor);
  currentattributes[12]=request.getParameter("to");
  //System.out.println(to);
  currentattributes[13]=request.getParameter("toand");
  //System.out.println(toand);
  currentattributes[14]=request.getParameter("toor");
  //System.out.println(toor);
  currentattributes[15]=request.getParameter("reply");
  //System.out.println(reply);
  //currentattributes[16]=request.getParameter("replyand");
  //System.out.println(replyand);
  //currentattributes[17]=request.getParameter("replyor");
  //System.out.println(replyor);
  currentattributes[18]=request.getParameter("cc");
  //System.out.println(cc);
  currentattributes[19]=request.getParameter("ccand");
  //System.out.println(ccand);
  currentattributes[20]=request.getParameter("ccor");
  //System.out.println(ccor);
  currentattributes[21]=request.getParameter("bcc");
  //System.out.println(bcc);
  currentattributes[22]=request.getParameter("bccand");
  //System.out.println(bccand);
  currentattributes[23]=request.getParameter("bccor");
  //System.out.println(bccor);
  currentattributes[24]=request.getParameter("date");
  //System.out.println(date);
  currentattributes[25]=request.getParameter("dateand");
  //System.out.println(dateand);
  currentattributes[26]=request.getParameter("dateor");
  currentattributes[27]=request.getParameter("hasattachment");
  currentattributes[28]=request.getParameter("haslink");
  if(currentattributes[24]!=null&&!currentattributes[24].equals("")&&!currentattributes[24].equals("huh"))
  currentattributes[24]=currentattributes[24]+"T00:00:00+05:30";
  if(currentattributes[25]!=null&&!currentattributes[25].equals("")&&!currentattributes[25].equals("huh"))
  currentattributes[25]=currentattributes[25]+"T00:00:00+05:30";
  if(currentattributes[26]!=null&&!currentattributes[26].equals("")&&!currentattributes[26].equals("huh"))
  currentattributes[26]=currentattributes[26]+"T00:00:00+05:30";
  //System.out.println(dateor);
  /*
  for(int m=0;m<28;m++)
  {		
	  if(currentattributes[m]!=null)
		  System.out.println(m+"hi"+currentattributes[m]);
  }*/
  for(int l=0;l<29;l++)
  {
	  if(currentattributes[l]!=null&&! currentattributes[l].equals("")&&previousattributes!=null&&l!=16&&l!=17)
	  { if(currentattributes[l].equals("huh"))
	  { //System.out.println(l);
		  previousattributes[l]=null;
	  }
	  		else	
		  previousattributes[l]=currentattributes[l];
	  }
  }int pos=0;
  for(int m=0;m<29;m++)
	{
	  //System.out.println("hello"+previousattributes[m]);
	if(previousattributes[m]!=null&&!previousattributes[m].equals(""))
		pos=1;
	}

  session.setAttribute("previousattributes0",previousattributes[0]);
  session.setAttribute("previousattributes1",previousattributes[1]);
  session.setAttribute("previousattributes2",previousattributes[2]);
  session.setAttribute("previousattributes3",previousattributes[3]);
  session.setAttribute("previousattributes4",previousattributes[4]);
  session.setAttribute("previousattributes5",previousattributes[5]);
  session.setAttribute("previousattributes8",previousattributes[8]);
  session.setAttribute("previousattributes6",previousattributes[6]);
  session.setAttribute("previousattributes7",previousattributes[7]);
  session.setAttribute("previousattributes9",previousattributes[9]);
  session.setAttribute("previousattributes10",previousattributes[10]);
  session.setAttribute("previousattributes11",previousattributes[11]);
  session.setAttribute("previousattributes12",previousattributes[12]);
  session.setAttribute("previousattributes13",previousattributes[13]);
  session.setAttribute("previousattributes14",previousattributes[14]);
  session.setAttribute("previousattributes15",previousattributes[15]);
  //session.setAttribute("previousattributes16",previousattributes[16]);
  //session.setAttribute("previousattributes17",previousattributes[17]);
  session.setAttribute("previousattributes18",previousattributes[18]);
  session.setAttribute("previousattributes19",previousattributes[19]);
  session.setAttribute("previousattributes20",previousattributes[20]);
  session.setAttribute("previousattributes21",previousattributes[21]);
  session.setAttribute("previousattributes22",previousattributes[22]);
  session.setAttribute("previousattributes23",previousattributes[23]);
  session.setAttribute("previousattributes24",previousattributes[24]);
  session.setAttribute("previousattributes25",previousattributes[25]);
  session.setAttribute("previousattributes26",previousattributes[26]);
  session.setAttribute("previousattributes27",previousattributes[27]);
  session.setAttribute("previousattributes28",previousattributes[28]);
  matter[0]="?a <SUB:> ?c . FILTER regex(?c,'";
  //System.out.println(subject";
  matter[1]="?a <SUB:> ?d . FILTER regex(?d,'";
  //System.out.println(subjectand";
  matter[2]="";
  //System.out.println(subjector";
  matter[3]="?a <CONTENT:> ?b . FILTER regex(?b,'";
  //System.out.println(content";
  matter[4]="?a <CONTENT:> ?d . FILTER regex(?d,'";
  //System.out.println(contentand";
  matter[5]="contentor";
  //System.out.println(contentor";
  matter[6]="?a <ATTACHEMENTNAME:> ?e . FILTER regex(?e,'";
  //System.out.println(attachment";
  matter[7]="?a <ATTACHEMENTNAME:> ?f . FILTER regex(?f,'";
  //System.out.println(attachmentand";
  matter[8]="attachmentor";
  //System.out.println(attachmentor";
  matter[9]="?a <FROMFULL:> ?q .FILTER regex(?q,'";
  //System.out.println(from";
  matter[10]="?a <FROMFULL:>  ?r .FILTER regex(?r,'";
  //System.out.println(fromand";
  matter[11]="fromor";
  //System.out.println(fromor";
  matter[12]="?a <TOFULL:>  ?s .FILTER regex(?s,'";
  //System.out.println(to";
  matter[13]="?a <TOFULL:>  ?t .FILTER regex(?t,'";
  //System.out.println(toand";
  matter[14]="toor";
  //System.out.println(toor";
  matter[15]="?a <REPLIEDTO:> '";
  //System.out.println(reply";
  //matter[16]="?a <REPLIEDTO:> '";
  //System.out.println(replyand";
  //matter[17]="replyor";
  //System.out.println(replyor";
  matter[18]="?a <CC:> '";
  //System.out.println(cc";
  matter[19]="?a <CC:> '";
  //System.out.println(ccor";
  //System.out.println(ccand";
  matter[20]="ccor";
  matter[21]="?a <BCC:> '";
  //System.out.println(bcc";
  matter[22]="?a <BCC:> '";
  //System.out.println(bccand";
  matter[23]="bccor";
  //System.out.println(bccor";
  matter[24]="?a <DATE:> ?l . FILTER (?l >= <http://www.w3.org/2001/XMLSchema#dateTime>('";
  //System.out.println(date";
  matter[25]="?a <DATE:> ?l . FILTER (?l >= <http://www.w3.org/2001/XMLSchema#dateTime>('";;
  //System.out.println(dateand";
  matter[26]="?a <DATE:> ?m . FILTER (?m <= <http://www.w3.org/2001/XMLSchema#dateTime>('";;
  matter[27]="?a <ATTACHEMENTNAME:> ?n . FILTER regex(?n,'";
  matter[27]="?a <LINK:> ?o . FILTER regex(?o,'";
  //System.out.println(dateor";
String[] matteror=new String[8];
matteror[0]="{?a <SUB:> ?g .FILTER regex(?g,'"+previousattributes[0]+"','i')} UNION {?a <SUB:> ?h .FILTER regex(?h,'"+previousattributes[2]+"','i')} . ";
matteror[1]="{?a <CONTENT:> ?g .FILTER regex(?g,'"+previousattributes[3]+"','i')} UNION {?a <CONTENT:> ?h .FILTER regex(?h,'"+previousattributes[5]+"','i')} . ";
matteror[2]="{?a <ATTACHEMENTNAME:> ?g .FILTER regex(?g,'"+previousattributes[6]+"','i')} UNION {?a <ATTACHEMENTNAME:> ?h .FILTER regex(?h,'"+previousattributes[8]+"','i')} . ";
matteror[3]="{?a <FROMFULL:> ?g .FILTER regex(?g,'"+previousattributes[9]+"','i')} UNION {?a <FROMFULL:> ?h .FILTER regex(?h,'"+previousattributes[11]+"','i')} . ";
matteror[4]="{?a <TOFULL:> ?g .FILTER regex(?g,'"+previousattributes[12]+"','i')} UNION {?a <TOFULL:> ?h .FILTER regex(?h,'"+previousattributes[14]+"','i')} . ";
matteror[5]="{?a <CC:> ?g .FILTER regex(?g,'"+previousattributes[18]+"','i')} UNION {?a <CC:> ?h .FILTER regex(?h,'"+previousattributes[20]+"','i')} . ";
matteror[7]="{?a <BCC:> ?g .FILTER regex(?g,'"+previousattributes[21]+"','i')} UNION {?a <BCC:> ?h .FILTER regex(?h,'"+previousattributes[23]+"','i')} . ";

//String query="SELECT ?x WHERE { ?a <SUB:> ?x .";
String query="";
int flag=0;
for(int j=0;j<8;j++)
{	if(j==6)
	continue;
	if(previousattributes[3*j+2]!=null&&!previousattributes[3*j+2].equals(""))
		query+=matteror[j];
	else
	{	for(int i=j*3;i<j*3+2;i++)
		{		
			if(previousattributes[i]!=null&&!previousattributes[i].equals(""))
			{	if(flag==1)
					query=query+".";	
				flag=1;
				if(i==0||i==1||i==4||i==3||i==9||i==10||i==12||i==13||i==6||i==7)
					query=query+matter[i]+previousattributes[i]+"','i') ";
  				else if(i==24||i==25||i==26)
  					query=query+matter[i]+previousattributes[i]+"')) ";
  				else
				query=query+matter[i]+previousattributes[i]+"' ";
			}
		}			
		
	}
}
if(previousattributes[15]!=null&&!previousattributes[15].equals(""))
{	if(flag==1)
		query=query+".";	
	
	query=query+matter[15]+previousattributes[15]+"' ";
}
for(int i=24;i<29;i++)
{	
	if(previousattributes[i]!=null&&!previousattributes[i].equals(""))
	{	if(flag==1)
			query=query+".";	
		flag=1;
		if(i==0||i==3||i==27||i==28)
			query=query+matter[i]+previousattributes[i]+"','i') ";
			else if(i==24||i==25||i==26)
				query=query+matter[i]+previousattributes[i]+"')) ";
			else
		query=query+matter[i]+previousattributes[i]+"' ";
	}
}	
query+=" } LIMIT 30";
String querysub="SELECT  DISTINCT ?x ?ax ?bx ?cx WHERE { ?a <SUB:> ?x .?a <DATE:> ?ax .?a <SENDERNAME:> ?bx . ?a <MESSAGEID:> ?cx ."+query;
String querysend="SELECT (?x as ?u) WHERE { ?a <FROM:> ?x ."+query;
if(subquery!=null)
{
	
	 querysub="SELECT  DISTINCT  ?x ?ax ?bx ?cx WHERE { ?a <SUB:> ?x .?a <DATE:> ?ax .?a <SENDERNAME:> ?bx . ?a <MESSAGEID:> ?cx .?a <FROM:> ?u .{"+subquery+"} ."+query;
	 querysend="SELECT ?x ?ax ?bx ?cx WHERE { ?a <SUB:> ?x .?a <DATE:> ?ax .?a <SENDERNAME:> ?bx . ?a <MESSAGEID:> ?cx .?a <FROM:> ?u .{"+subquery+"} ."+query;

	
	
}	
  System.out.println(querysub);
  System.out.println(querysend); 
  %>
 
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="ico/E-Mail.ico">

    <title>Mazil</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/dashboard.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/hover.css" rel="stylesheet">
     <link href="css/button.css" rel="stylesheet">
     <link href="css/tabs.css" rel="stylesheet"/> 
     <link href="css/datepicker.css" rel="stylesheet"/>  
         <script src="js/jquery-1.11.1.js" type="text/javascript"></script>
    <script src="js/bootstrap-datepicker.js" type="text/javascript"></script>


    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <style>
    	a, u {
    			text-decoration: none;
			}
    </style>
     <script>
    var e;
   function serachdisplay(e)
   {
   	if(e.keyCode==13){
	   document.getElementById('div1').style.display = 'none';
	   document.getElementById('div19').style.display = 'none';
	   document.getElementById('div20').style.display = 'none';
	   document.getElementById('div21').style.display = 'none';
	   document.getElementById('div22').style.display = 'none';
	   document.getElementById('div23').style.display = 'none';
	   document.getElementById('div24').style.display = 'none';
	   document.getElementById('div25').style.display = 'none';
	   document.getElementById('div26').style.display = 'none';
	   document.getElementById('div27').style.display = 'none';
	   document.getElementById('div28').style.display = 'none';
	   document.getElementById('div29').style.display = 'none';
	   document.getElementById('div30').style.display = 'none';
	   document.getElementById('div31').style.display = 'none';
	   document.getElementById('div32').style.display = 'none';
	   document.getElementById('div33').style.display = 'none';
	   document.getElementById('div34').style.display = 'none';
	   document.getElementById('div35').style.display = 'none';
	   document.getElementById('div36').style.display = 'none';
	   document.getElementById('div37').style.display = 'none';
	   document.getElementById('div38').style.display = 'none';
	   document.getElementById('div39').style.display = 'none';
	   document.getElementById('div40').style.display = 'none';
	   document.getElementById('div41').style.display = 'none';
	   document.getElementById('div42').style.display = 'none';
	   
   	}
   }
    </script>
    
  </head>

  <body>
  

	
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>

          <a class="navbar-brand" href="index.jsp">Mazil</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="gmail_like.jsp?item=<%=0%>">E-Mails</a></li>
           
            <li><a href="help.jsp">Help</a></li>
            <li><a href="index.jsp">Logout</a></li>
          </ul>
          <form class="navbar-form navbar-right" action="Search.jsp" method="get">
            <input type="text" class="form-control" placeholder="Search..." name="search">
            <input type="hidden" name="item" value="<%=0%>">  </form>
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="row">
        <% int value=Integer.parseInt(request.getParameter("item"));
     			int value1=value+30;%>
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            
             <li><a href="gmail_like.jsp?item=<%=0%>">Inbox</a></li>
            <li><a href="Starred.jsp?item=<%=0%>">Starred</a></li>
            <li><a href="Spam.jsp?item=<%=0%>">Spam</a></li>
            <li><a href="Sentmail.jsp?item=<%=0%>">Sentmail</a></li>
            <li><a href="Drafts.jsp?item=<%=0%>">Drafts</a></li>
            <li class="active"><a href="Trash.jsp?item=<%=value%>">Trash</a></li>
            <li><a href="Allmail.jsp?item=<%=0%>">All</a></li>
             <li><a href="conversation.jsp?item=<%=0%>&counter=<%=0%>">Conversation</a></li>
             <li><div style="margin-top:50%;margin-left:27%;color:#428bca;"><strong>Active Filters</strong></strong></div></li><hr style="margin-top:2%;padding:0;">
          </ul>
          <ul>
            <div id="post" style="margin-top:-4%"></div>
        <%int k;
        for(k=0;k<29;k++)
        { if(previousattributes[k]!=null&&!previousattributes[k].equals(""))
        	out.println("<a href='Trash.jsp?item=0&"+attributesnames[k]+"=huh'>"+attributesnames[k]+":"+previousattributes[k]+"<i class='fa fa-times-circle fa-fw'>"+"</i>"+"</a><br>");
        }
        %>
          </ul>
        </div>
     </div>
     </div> 
 
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main" style="margin-top:0px">
          <a href="Trash.jsp?item=<%=value-30%>" class="classname" style=" margin-top:20px;margin-left:800px;"><p> < </p></a>
			<a href="Trash.jsp?item=<%=value+30%>" class="classname1" > > </a>
     <h1 class="page-header" style=" margin-top:-40px;">E-Mails</h1>   
     <h4 class="page-header" style=" margin-top:-50px; margin-left:720px;"><%out.println(value+"-"+value1); %></h4>  
        
     
          <!--<div class="row placeholders">
          </div>!-->
<div class=tab-container >
  <ul class="tabs clearfix" >
    <li class=active > 
      <a href=# >Emails</a> 
    </li>
    <li> 
      <a href="conversation.jsp?item=<%=0%>&counter=<%=0%>" >Conversation</a> 
    </li>
   
  </ul>
</div>

          <!--<h2 class="sub-header"></h2>-->
              <!--NOTIFICATION STARTS-->
                <div class="container-fluid " style="margin-top:0%;margin-left:65%;width:27%;" >
               
                    <div class="panel panel-default ">
                        <div class="panel-heading ">
                            <i class="fa fa-search fa-fw"></i> Search Panel
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="list-group">
                                <form class="list-group-item"  method="get" onsubmit="action='Trash.jsp'"> 
    							 <input type="hidden" name="item" value="<%=0%>">  
    				 			<i class="fa fa-arrow-circle-right fa-fw "></i> <span  action="Trash.jsp" onclick="document.getElementById('div1').style.display = 'block';"  style="margin-left:1%">Subject </span>	
                                <span action="Trash.jsp" class=" text-muted small"  onclick="document.getElementById('div19').style.display = 'block';"  style="margin-left:40%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div20').style.display = 'block';" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                
                                <div id="div1" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name" name="subject" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <div id="div19" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name" name="subjectand" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <div id="div20" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name" name="subjector" style="width:100%" onkeypress="serachdisplay(event)"></div>

                                <input type="submit" style="position: absolute; left: -9999px"/>
                                
                                </form>
                                <form class="list-group-item" method="get" onsubmit="action='Trash.jsp'">
                                  <input type="hidden" name="item" value="<%=0%>">  
    							<i class="fa fa-clipboard fa-fw "></i> <span onclick="document.getElementById('div21').style.display = 'block';setValue('Content')"  style="margin-left:1%">Content </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div22').style.display = 'block';"  style="margin-left:40%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div23').style.display = 'block';" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                
                                <div id="div21" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name1" name="content" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <div id="div22" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name1" name="contentand" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <div id="div23" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name1" name="contentor" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <input type="submit" style="position: absolute; left: -9999px"/>
                                </form>
                                <form class="list-group-item" method="get" onsubmit="action='Trash.jsp'">
                                  <input type="hidden" name="item" value="<%=0%>">  
    							<i class="fa fa-paperclip fa-fw "></i> <span onclick="document.getElementById('div24').style.display = 'block';"  style="margin-left:1%">Attachments </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div25').style.display = 'block';"  style="margin-left:28%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div26').style.display = 'block';" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                
                                <div id="div24" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name2" name="attachment" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                 <div id="div25" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name2" name="attachmentand" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                  <div id="div26" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name2" name="attachmentor" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                    <input type="submit" style="position: absolute; left: -9999px"/>
                                </form>
                               <form class="list-group-item" method="get" onsubmit="action='Trash.jsp'">
                                <input type="hidden" name="item" value="<%=0%>">  
    							<i class="fa fa-hand-o-right fa-fw "></i> <span onclick="document.getElementById('div27').style.display = 'block';"  style="margin-left:1%">TO </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div28').style.display = 'block';"  style="margin-left:50%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div29').style.display = 'block';" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                
                                <div id="div27" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name3" name="to" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <div id="div28" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name" name="toand" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                 <div id="div29" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name" name="toor" style="width:100%" onkeypress="serachdisplay(event)"></div> 
                                <input type="submit" style="position: absolute; left: -9999px"/>
                                </form>
                                <form class="list-group-item" method="get" onsubmit="action='Trash.jsp'">
                                  <input type="hidden" name="item" value="<%=0%>">  
    							<i class="fa fa-hand-o-left fa-fw "></i> <span onclick="document.getElementById('div30').style.display = 'block';"  style="margin-left:1%">FROM </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div31').style.display = 'block';"  style="margin-left:42%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div32').style.display = 'block';" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                <div id="div30" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name" name="from" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <div id="div31" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name4" name="fromand" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <div id="div32" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name" name="fromor" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <input type="submit" style="position: absolute; left: -9999px"/>
                                </form>
                                 <form class="list-group-item" method="get" onsubmit="action='Trash.jsp'">
                                  <input type="hidden" name="item" value="<%=0%>">  
    							<i class="fa fa-mail-forward fa-fw "></i> <span onclick="document.getElementById('div33').style.display = 'block';"  style="margin-left:1%">CC </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div34').style.display = 'block';"  style="margin-left:50%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div35').style.display = 'block';" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                <div id="div33" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name" name="cc" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <div id="div34" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name" name="ccand" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <div id="div35" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name5" name="ccor" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <input type="submit" style="position: absolute; left: -9999px"/>
                                </form>
                                <form class="list-group-item" method="get" onsubmit="action='Trash.jsp'">
                                  <input type="hidden" name="item" value="<%=0%>">  
    							<i class="fa fa-mail-reply-all fa-fw "></i> <span onclick="document.getElementById('div36').style.display = 'block';"  style="margin-left:1%">BCC </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div37').style.display = 'block';"  style="margin-left:46%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div38').style.display = 'block';" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                <div id="div36" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name" name="bcc" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <div id="div37" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name" name="bccand" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <div id="div38" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name6" name="bccor" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <input type="submit" style="position: absolute; left: -9999px"/>
                                </form>
                               <form class="list-group-item" method="get" onsubmit="action='Trash.jsp'">
                                <input type="hidden" name="item" value="<%=0%>">  
    							<i class="fa fa-calendar fa-fw "></i> <span onclick="document.getElementById('div39').style.display = 'block';"  style="margin-left:1%">Date </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div40').style.display = 'block';"  style="margin-left:36%"><em> After <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div41').style.display = 'block';" style="margin-left:3%"><em>Before <i class="fa fa-angle-down"></i></em>
                                </span>
 <div   class="input-group date" data-date="2014-02-2" data-date-format="yyyy-mm-dd"  id="div39" style="display:none;margin-left:10%;margin-top:2%;">
      <span class="input-group-addon" style="width:20px;height:34px;"><i class="glyphicon glyphicon-calendar" ></i></span><input class="form-control" type="text"  placeholder="2012-02-12"  id="name7" name="date" style="width:60%;margin-left:17.5%;margin-top:-14.7%;" ></div>
                  <script type="text/javascript">
               $('#div39').datepicker();
             </script>
                                 <div   class="input-group date" data-date="2012-02-12" data-date-format="yyyy-mm-dd"  id="div40" style="display:none;margin-left:10%;margin-top:2%;">
      <span class="input-group-addon" style="width:20px;height:34px;"><i class="glyphicon glyphicon-calendar" ></i></span><input class="form-control" type="text"  name="dateand" placeholder="2012-02-12"  id="name8" style="width:60%;margin-left:17.5%;margin-top:-14.7%;" ></div>
                  <script type="text/javascript">
               $('#div40').datepicker();
             </script>
              <div   class="input-group date" data-date="2012-02-12" data-date-format="yyyy-mm-dd"  id="div41" style="display:none;margin-left:10%;margin-top:2%;">
      <span class="input-group-addon" style="width:20px;height:34px;"><i class="glyphicon glyphicon-calendar" ></i></span><input class="form-control" type="text"  name="dateor" placeholder="2012-02-12"  id="name9" style="width:60%;margin-left:17.5%;margin-top:-14.7%;" ></div>
                  <script type="text/javascript">
               $('#div41').datepicker();
             </script>                   <input type="submit" style="position: absolute; left: -9999px"/>
                                </form>
                                <form class="list-group-item" method="get" onsubmit="action='Trash.jsp'">
                                  <input type="hidden" name="item" value="<%=0%>">  
    							<i class="fa fa-file-text fa-fw "></i> <span onclick="document.getElementById('div42').style.display = 'block';"  style="margin-left:1%">In Reply To </span>	
                                
                                <div id="div42" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name" name="reply" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                
                                <input type="submit" style="position: absolute; left: -9999px"/>
                                </form>
                               <form class="list-group-item" method="get"  action="Trash.jsp">
                                <input type="hidden" name="item" value="<%=0%>">  
    							<i class="fa fa-check fa-fw "></i> <span style="margin-left:1%">Has Attachments</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="checkbox" onChange="this.form.submit()" name="hasattachment" value="," >
                                <input type="submit"   style="position: absolute; left: -9999px"/>
                                </form>
                                <form class="list-group-item" method="get"  action="gmail_like.jsp">
                                <input type="hidden" name="item" value="<%=0%>">  
    							<i class="fa fa-check fa-fw "></i> <span style="margin-left:1%">Has Link</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="checkbox" onChange="this.form.submit()" name="haslink" value="," >
                                <input type="submit"   style="position: absolute; left: -9999px"/>
                                </form>
                                
                            </div>
                            <!-- /.list-group -->
                            <a href="Trash.jsp?item=0&sub=<%=querysend%>" class="btn btn-default btn-block">Search among current Results!</a>

                        </div>
                        <!-- /.panel-body -->
                    </div>
              <!--NOTIFICATION ENDS-->
         	
   <div  class="table-responsive" style="margin-top:-650px;margin-left:-900px;font-size:15px;width:900px;background-color: #f5f5f5">
           
            <table class="table table-striped">
       
             <%@ page import="in.ac.iiitd.mazil.Tdbfullquery "%>
 <%@page import="java.io.*" %>   
 <%@page import="java.text.*" %>
 <%@page import="java.util.*" %>
            <%  Tdbfullquery demo = new Tdbfullquery();
            
            //out.println(value);
            Tdbfullquery dem = new Tdbfullquery();
            Tdbfullquery de = new Tdbfullquery();
            Tdbfullquery d = new Tdbfullquery();
            String[] id =new String[30];
            String[] dat =new String[30];
            String[] nam =new String[30];
            String[] mailid =new String[30];
            int i;
            if(pos!=1)
           demo.mai("SELECT  DISTINCT ?x ?ax ?bx ?cx WHERE { ?a <SUB:> ?x .?a <DATE:> ?ax .?a <SENDERNAME:> ?bx . ?a <MESSAGEID:> ?cx. ?a <FOLDERNAME:> '[Gmail]/Trash' } LIMIT 30 OFFSET"+value);
            else
            	demo.mai(querysub+" OFFSET "+value);
            for(i=0;i<30;i++)
           {   id[i]=Tdbfullquery.subject[i];
           		id[i] = id[i].substring(0, Math.min(id[i].length(), 100));
           }
            
            for(i=0;i<30;i++)
           {   dat[i]=Tdbfullquery.date[i];
           	   if(!dat[i].equals("hi"))
           	   {
                	dat[i] = dat[i].substring(0, Math.min(dat[i].length(), 25));
                 	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssX");
                 	Date date = formatter.parse(dat[i]);
                 	SimpleDateFormat formatte = new SimpleDateFormat("dd/MM/yyyy HH:mm");
                 	System.out.println(formatte.format(date));
                 	dat[i]=formatte.format(date);
                }
           }
           
            
            for(i=0;i<30;i++)
           {   nam[i]=Tdbfullquery.sendername[i];
           		nam[i] = nam[i].substring(0, Math.min(nam[i].length(), 16));
           }
           
            for(i=0;i<30;i++)
           {   mailid[i]=Tdbfullquery.messageid[i];
           		//mailid[i] = mailid[i].substring(0, Math.min(id[i].length(), 100));
           }
          
            for(i=0;i<30;i++)
            { //id[i]=tdbquery.arr[i];
            if(!id[i].equals("hi"))
            	out.println("<tr height='5'><td width='120'style='font-size:15px'>"+nam[i]+"</td><td width='400'>"+"<a href='final.jsp?itemId="+mailid[i]+"' class='button grow' style=' text-decoration: none; color:black;font-size:15px;'>"+"&nbsp&nbsp&nbsp&nbsp"+id[i]+"<hr style='border-color:#E6E6E6;padding:0px;margin:0px'>"+"</a>"+"</td><td width='90' style='font-size:12px'>"+""+dat[i]+"</td>"+"</tr>");
            else 
            	break;
            }i--;	
            %>
        
            </table>
          </div>
         
       
      </div>
      
    </div>
	
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/docs.min.js"></script>
      <script src="js/script.js"></script>
    <script src="js/sorttable.js"></script>
    <script src="js/datetime.js"></script>
  </body>
</html>