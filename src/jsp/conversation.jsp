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
  <%
  String[][] currentattributes=new String[5][30];
  String[][] previousattributes=new String[5][30];			//String arrays declared 
  String[][] attributesnames=new String[5][30];
  String[][] matter=new String[5][30];
  String[][] matteror=new String[5][8];
  int counter;
  counter=Integer.parseInt(request.getParameter("counter"));
  previousattributes[0][0]=(String)session.getAttribute("previousattributes0a0");		//getting the previous attributes which were set in previous webpage
  previousattributes[0][1]=(String)session.getAttribute("previousattributes0a1");
  previousattributes[0][2]=(String)session.getAttribute("previousattributes0a2");
  previousattributes[0][3]=(String)session.getAttribute("previousattributes0a3");
  previousattributes[0][4]=(String)session.getAttribute("previousattributes0a4");
  previousattributes[0][5]=(String)session.getAttribute("previousattributes0a5");
  previousattributes[0][6]=(String)session.getAttribute("previousattributes0a6");
  previousattributes[0][7]=(String)session.getAttribute("previousattributes0a7");
  previousattributes[0][8]=(String)session.getAttribute("previousattributes0a8");
  previousattributes[0][9]=(String)session.getAttribute("previousattributes0a9");
  previousattributes[0][10]=(String)session.getAttribute("previousattributes0a10");
  previousattributes[0][11]=(String)session.getAttribute("previousattributes0a11"); 
  previousattributes[0][12]=(String)session.getAttribute("previousattributes0a12");
  previousattributes[0][13]=(String)session.getAttribute("previousattributes0a13");
  previousattributes[0][14]=(String)session.getAttribute("previousattributes0a14");
  previousattributes[0][15]=(String)session.getAttribute("previousattributes0a15");
  previousattributes[0][16]=(String)session.getAttribute("previousattributes0a16");
  previousattributes[0][17]=(String)session.getAttribute("previousattributes0a17");
  previousattributes[0][18]=(String)session.getAttribute("previousattributes0a18");
  previousattributes[0][19]=(String)session.getAttribute("previousattributes0a19");
  previousattributes[0][20]=(String)session.getAttribute("previousattributes0a20");
  previousattributes[0][21]=(String)session.getAttribute("previousattributes0a21");
  previousattributes[0][22]=(String)session.getAttribute("previousattributes0a22");
  previousattributes[0][23]=(String)session.getAttribute("previousattributes0a23");
  previousattributes[0][24]=(String)session.getAttribute("previousattributes0a24");
  previousattributes[0][25]=(String)session.getAttribute("previousattributes0a25");
  previousattributes[0][26]=(String)session.getAttribute("previousattributes0a26");
  previousattributes[0][27]=(String)session.getAttribute("previousattributes0a27");
  previousattributes[0][28]=(String)session.getAttribute("previousattributes0a28");
  
  previousattributes[1][0]=(String)session.getAttribute("previousattributes1a0");		//getting the previous attributes which were set in previous webpage
  previousattributes[1][1]=(String)session.getAttribute("previousattributes1a1");
  previousattributes[1][2]=(String)session.getAttribute("previousattributes1a2");
  previousattributes[1][3]=(String)session.getAttribute("previousattributes1a3");
  previousattributes[1][4]=(String)session.getAttribute("previousattributes1a4");
  previousattributes[1][5]=(String)session.getAttribute("previousattributes1a5");
  previousattributes[1][6]=(String)session.getAttribute("previousattributes1a6");
  previousattributes[1][7]=(String)session.getAttribute("previousattributes1a7");
  previousattributes[1][8]=(String)session.getAttribute("previousattributes1a8");
  previousattributes[1][9]=(String)session.getAttribute("previousattributes1a9");
  previousattributes[1][10]=(String)session.getAttribute("previousattributes1a10");
  previousattributes[1][11]=(String)session.getAttribute("previousattributes1a11"); 
  previousattributes[1][12]=(String)session.getAttribute("previousattributes1a12");
  previousattributes[1][13]=(String)session.getAttribute("previousattributes1a13");
  previousattributes[1][14]=(String)session.getAttribute("previousattributes1a14");
  previousattributes[1][15]=(String)session.getAttribute("previousattributes1a15");
  previousattributes[1][16]=(String)session.getAttribute("previousattributes1a16");
  previousattributes[1][17]=(String)session.getAttribute("previousattributes1a17");
  previousattributes[1][18]=(String)session.getAttribute("previousattributes1a18");
  previousattributes[1][19]=(String)session.getAttribute("previousattributes1a19");
  previousattributes[1][20]=(String)session.getAttribute("previousattributes1a20");
  previousattributes[1][21]=(String)session.getAttribute("previousattributes1a21");
  previousattributes[1][22]=(String)session.getAttribute("previousattributes1a22");
  previousattributes[1][23]=(String)session.getAttribute("previousattributes1a23");
  previousattributes[1][24]=(String)session.getAttribute("previousattributes1a24");
  previousattributes[1][25]=(String)session.getAttribute("previousattributes1a25");
  previousattributes[1][26]=(String)session.getAttribute("previousattributes1a26");
  previousattributes[1][27]=(String)session.getAttribute("previousattributes1a27");
  previousattributes[1][28]=(String)session.getAttribute("previousattributes1a28");
  
  previousattributes[2][0]=(String)session.getAttribute("previousattributes2a0");		//getting the previous attributes which were set in previous webpage
  previousattributes[2][1]=(String)session.getAttribute("previousattributes2a1");
  previousattributes[2][2]=(String)session.getAttribute("previousattributes2a2");
  previousattributes[2][3]=(String)session.getAttribute("previousattributes2a3");
  previousattributes[2][4]=(String)session.getAttribute("previousattributes2a4");
  previousattributes[2][5]=(String)session.getAttribute("previousattributes2a5");
  previousattributes[2][6]=(String)session.getAttribute("previousattributes2a6");
  previousattributes[2][7]=(String)session.getAttribute("previousattributes2a7");
  previousattributes[2][8]=(String)session.getAttribute("previousattributes2a8");
  previousattributes[2][9]=(String)session.getAttribute("previousattributes2a9");
  previousattributes[2][10]=(String)session.getAttribute("previousattributes2a10");
  previousattributes[2][11]=(String)session.getAttribute("previousattributes2a11"); 
  previousattributes[2][12]=(String)session.getAttribute("previousattributes2a12");
  previousattributes[2][13]=(String)session.getAttribute("previousattributes2a13");
  previousattributes[2][14]=(String)session.getAttribute("previousattributes2a14");
  previousattributes[2][15]=(String)session.getAttribute("previousattributes2a15");
  previousattributes[2][16]=(String)session.getAttribute("previousattributes2a16");
  previousattributes[2][17]=(String)session.getAttribute("previousattributes2a17");
  previousattributes[2][18]=(String)session.getAttribute("previousattributes2a18");
  previousattributes[2][19]=(String)session.getAttribute("previousattributes2a19");
  previousattributes[2][20]=(String)session.getAttribute("previousattributes2a20");
  previousattributes[2][21]=(String)session.getAttribute("previousattributes2a21");
  previousattributes[2][22]=(String)session.getAttribute("previousattributes2a22");
  previousattributes[2][23]=(String)session.getAttribute("previousattributes2a23");
  previousattributes[2][24]=(String)session.getAttribute("previousattributes2a24");
  previousattributes[2][25]=(String)session.getAttribute("previousattributes2a25");
  previousattributes[2][26]=(String)session.getAttribute("previousattributes2a26");
  previousattributes[2][27]=(String)session.getAttribute("previousattributes2a27");
  previousattributes[2][28]=(String)session.getAttribute("previousattributes2a28");
  
  previousattributes[3][0]=(String)session.getAttribute("previousattributes3a0");		//getting the previous attributes which were set in previous webpage
  previousattributes[3][1]=(String)session.getAttribute("previousattributes3a1");
  previousattributes[3][2]=(String)session.getAttribute("previousattributes3a2");
  previousattributes[3][3]=(String)session.getAttribute("previousattributes3a3");
  previousattributes[3][4]=(String)session.getAttribute("previousattributes3a4");
  previousattributes[3][5]=(String)session.getAttribute("previousattributes3a5");
  previousattributes[3][6]=(String)session.getAttribute("previousattributes3a6");
  previousattributes[3][7]=(String)session.getAttribute("previousattributes3a7");
  previousattributes[3][8]=(String)session.getAttribute("previousattributes3a8");
  previousattributes[3][9]=(String)session.getAttribute("previousattributes3a9");
  previousattributes[3][10]=(String)session.getAttribute("previousattributes3a10");
  previousattributes[3][11]=(String)session.getAttribute("previousattributes3a11"); 
  previousattributes[3][12]=(String)session.getAttribute("previousattributes3a12");
  previousattributes[3][13]=(String)session.getAttribute("previousattributes3a13");
  previousattributes[3][14]=(String)session.getAttribute("previousattributes3a14");
  previousattributes[3][15]=(String)session.getAttribute("previousattributes3a15");
  previousattributes[3][16]=(String)session.getAttribute("previousattributes3a16");
  previousattributes[3][17]=(String)session.getAttribute("previousattributes3a17");
  previousattributes[3][18]=(String)session.getAttribute("previousattributes3a18");
  previousattributes[3][19]=(String)session.getAttribute("previousattributes3a19");
  previousattributes[3][20]=(String)session.getAttribute("previousattributes3a20");
  previousattributes[3][21]=(String)session.getAttribute("previousattributes3a21");
  previousattributes[3][22]=(String)session.getAttribute("previousattributes3a22");
  previousattributes[3][23]=(String)session.getAttribute("previousattributes3a23");
  previousattributes[3][24]=(String)session.getAttribute("previousattributes3a24");
  previousattributes[3][25]=(String)session.getAttribute("previousattributes3a25");
  previousattributes[3][26]=(String)session.getAttribute("previousattributes3a26");
  previousattributes[3][27]=(String)session.getAttribute("previousattributes3a27");
  previousattributes[3][28]=(String)session.getAttribute("previousattributes3a28");
  
  previousattributes[4][0]=(String)session.getAttribute("previousattributes4a0");		//getting the previous attributes which were set in previous webpage
  previousattributes[4][1]=(String)session.getAttribute("previousattributes4a1");
  previousattributes[4][2]=(String)session.getAttribute("previousattributes4a2");
  previousattributes[4][3]=(String)session.getAttribute("previousattributes4a3");
  previousattributes[4][4]=(String)session.getAttribute("previousattributes4a4");
  previousattributes[4][5]=(String)session.getAttribute("previousattributes4a5");
  previousattributes[4][6]=(String)session.getAttribute("previousattributes4a6");
  previousattributes[4][7]=(String)session.getAttribute("previousattributes4a7");
  previousattributes[4][8]=(String)session.getAttribute("previousattributes4a8");
  previousattributes[4][9]=(String)session.getAttribute("previousattributes4a9");
  previousattributes[4][10]=(String)session.getAttribute("previousattributes4a10");
  previousattributes[4][11]=(String)session.getAttribute("previousattributes4a11"); 
  previousattributes[4][12]=(String)session.getAttribute("previousattributes4a12");
  previousattributes[4][13]=(String)session.getAttribute("previousattributes4a13");
  previousattributes[4][14]=(String)session.getAttribute("previousattributes4a14");
  previousattributes[4][15]=(String)session.getAttribute("previousattributes4a15");
  previousattributes[4][16]=(String)session.getAttribute("previousattributes4a16");
  previousattributes[4][17]=(String)session.getAttribute("previousattributes4a17");
  previousattributes[4][18]=(String)session.getAttribute("previousattributes4a18");
  previousattributes[4][19]=(String)session.getAttribute("previousattributes4a19");
  previousattributes[4][20]=(String)session.getAttribute("previousattributes4a20");
  previousattributes[4][21]=(String)session.getAttribute("previousattributes4a21");
  previousattributes[4][22]=(String)session.getAttribute("previousattributes4a22");
  previousattributes[4][23]=(String)session.getAttribute("previousattributes4a23");
  previousattributes[4][24]=(String)session.getAttribute("previousattributes4a24");
  previousattributes[4][25]=(String)session.getAttribute("previousattributes4a25");
  previousattributes[4][26]=(String)session.getAttribute("previousattributes4a26");
  previousattributes[4][27]=(String)session.getAttribute("previousattributes4a27");
  previousattributes[4][28]=(String)session.getAttribute("previousattributes4a28");
  
  for(int ab=0;ab<5;ab++)
  {	  
  attributesnames[ab][0]="subject"+ab;  //name of the attributes that need to be displayed on active filters
  //System.out.println(subject"+ab;
  attributesnames[ab][1]="subjectand"+ab;
  //System.out.println(subjectand"+ab;
  attributesnames[ab][2]="subjector"+ab;
  //System.out.println(subjector"+ab;
  attributesnames[ab][3]="content"+ab;
  //System.out.println(content"+ab;
  attributesnames[ab][4]="contentand"+ab;
  //System.out.println(contentand"+ab;
  attributesnames[ab][5]="contentor"+ab;
  //System.out.println(contentor"+ab;
  attributesnames[ab][6]="attachment"+ab;
  //System.out.println(attachment"+ab;
  attributesnames[ab][7]="attachmentand"+ab;
  //System.out.println(attachmentand"+ab;
  attributesnames[ab][8]="attachmentor"+ab;
  //System.out.println(attachmentor"+ab;
  attributesnames[ab][9]="from"+ab;
  //System.out.println(from"+ab;
  attributesnames[ab][10]="fromand"+ab;
  //System.out.println(fromand"+ab;
  attributesnames[ab][11]="fromor"+ab;
  //System.out.println(fromor"+ab;
  attributesnames[ab][12]="to"+ab;
  //System.out.println(to"+ab;
  attributesnames[ab][13]="toand"+ab;
  //System.out.println(toand"+ab;
  attributesnames[ab][14]="toor"+ab;
  //System.out.println(toor"+ab;
  attributesnames[ab][15]="reply"+ab;
  //System.out.println(reply"+ab;
  //attributesnames[ab][16]="replyand"+ab;
  ///System.out.println(replyand"+ab;
  ///attributesnames[ab][17]="replyor"+ab;
  //System.out.println(replyor"+ab;
  attributesnames[ab][18]="cc"+ab;
  //System.out.println(cc"+ab;
  attributesnames[ab][19]="ccand"+ab;
  //System.out.println(ccand"+ab;
  attributesnames[ab][20]="ccor"+ab;
  //System.out.println(ccor"+ab;
  attributesnames[ab][21]="bcc"+ab;
  //System.out.println(bcc"+ab;
  attributesnames[ab][22]="bccand"+ab;
  //System.out.println(bccand"+ab;
  attributesnames[ab][23]="bccor"+ab;
  //System.out.println(bccor"+ab;
  attributesnames[ab][24]="date"+ab;
  //System.out.println(date"+ab;
  attributesnames[ab][25]="dateand"+ab;
  //System.out.println(dateand"+ab;
  attributesnames[ab][26]="dateor"+ab;
  //System.out.println(dateor"+ab;
  attributesnames[ab][27]="hasattachment"+ab;
  //System.out.println(dateor"+ab;
    attributesnames[ab][28]="haslink"+ab;
  

  }
  
  /*
	for(int m=0;m<28;m++)
	{
		System.out.println(currentattributes[counter][m]);
	}*/
  	String subquery;
  	subquery=request.getParameter("sub");
  	if(subquery!=null)
		System.out.println("USE THIS"+subquery);
  	for(int ab=0;ab<5;ab++)
  	{		
  	currentattributes[ab][0]=request.getParameter("subject"+ab);		//the attributes given by user currently on this webpage
  	//System.out.println(subject);
  	currentattributes[ab][1]=request.getParameter("subjectand"+ab);
  	//System.out.println(subjectand);
  	currentattributes[ab][2]=request.getParameter("subjector"+ab);
  	//System.out.println(subjector);
  	currentattributes[ab][3]=request.getParameter("content"+ab);
  	//System.out.println(content);
  	currentattributes[ab][4]=request.getParameter("contentand"+ab);
  	//System.out.println(contentand);
  	currentattributes[ab][5]=request.getParameter("contentor"+ab);
  	//System.out.println(contentor);
  	currentattributes[ab][6]=request.getParameter("attachment"+ab);
  	//System.out.println(attachment);
  	currentattributes[ab][7]=request.getParameter("attachmentand"+ab);
  	//System.out.println(attachmentand);
  	currentattributes[ab][8]=request.getParameter("attachmentor"+ab);
  	//System.out.println(attachmentor);
  	currentattributes[ab][9]=request.getParameter("from"+ab);
  	//System.out.println(from);
  	currentattributes[ab][10]=request.getParameter("fromand"+ab);
  	//System.out.println(fromand);
  	currentattributes[ab][11]=request.getParameter("fromor"+ab);
  	//System.out.println(fromor);
  	currentattributes[ab][12]=request.getParameter("to"+ab);
  	//System.out.println(to);
  	currentattributes[ab][13]=request.getParameter("toand"+ab);
  	//System.out.println(toand);
  	currentattributes[ab][14]=request.getParameter("toor"+ab);
  	//System.out.println(toor);
  	currentattributes[ab][15]=request.getParameter("reply"+ab);
  	//System.out.println(reply);
  	//currentattributes[16]=request.getParameter("replyand"+ab);
  	//System.out.println(replyand);
  	//currentattributes[17]=request.getParameter("replyor"+ab);
  	//System.out.println(replyor);
  	currentattributes[ab][18]=request.getParameter("cc"+ab);
  	//System.out.println(cc);
  	currentattributes[ab][19]=request.getParameter("ccand"+ab);
  	//System.out.println(ccand);
  	currentattributes[ab][20]=request.getParameter("ccor"+ab);
  	//System.out.println(ccor);
  	currentattributes[ab][21]=request.getParameter("bcc"+ab);
  	//System.out.println(bcc);
  	currentattributes[ab][22]=request.getParameter("bccand"+ab);
  	//System.out.println(bccand);
  	currentattributes[ab][23]=request.getParameter("bccor"+ab);
  	//System.out.println(bccor);
  	currentattributes[ab][24]=request.getParameter("date"+ab);
  	//System.out.println(date);
  	currentattributes[ab][25]=request.getParameter("dateand"+ab);
  	//System.out.println(dateand);
  	currentattributes[ab][26]=request.getParameter("dateor"+ab);
  	currentattributes[ab][27]=request.getParameter("hasattachment"+ab);
  	currentattributes[ab][28]=request.getParameter("haslink"+ab);
  	if(currentattributes[ab][24]!=null&&!currentattributes[ab][24].equals(""+ab)&&!currentattributes[ab][24].equals("huh"))
  		currentattributes[ab][24]=currentattributes[ab][24]+"T00:00:00+05:30";
  	if(currentattributes[ab][25]!=null&&!currentattributes[ab][25].equals("")&&!currentattributes[ab][25].equals("huh"))
  		currentattributes[ab][25]=currentattributes[ab][25]+"T00:00:00+05:30";
  	if(currentattributes[ab][26]!=null&&!currentattributes[ab][26].equals("")&&!currentattributes[ab][26].equals("huh"))
  		currentattributes[ab][26]=currentattributes[ab][26]+"T00:00:00+05:30";
  	}
  	//System.out.println(dateor);
  	for(int ab=0;ab<5;ab++)
  	{	/*	
  	for(int m=0;m<28;m++)
  	{		
	  if(currentattributes[ab][m]!=null)
		  System.out.println(m+"hi"+currentattributes[ab][m]);
 	}*/
  	for(int l=0;l<29;l++)
 	{
	  if(currentattributes[ab][l]!=null&&!currentattributes[ab][l].equals("")&&previousattributes[ab]!=null&&l!=16&&l!=17)
	  { 
		  if(currentattributes[ab][l].equals("huh"))
	  	  {
			  //System.out.println(l);				//if user clicks cross on filter its value will be saved as huh and then here we check if value is huh than we make it null 
		  	  previousattributes[ab][l]=null;
	  	  }
	  	  else	
		  previousattributes[ab][l]=currentattributes[ab][l]; //finalattributes=currentattributes +previous attributes
	  }
  	}
  	}
  	int pos=0;
  	for(int m=0;m<29;m++)
	{
  		//System.out.println("hello"+previousattributes[counter][m]);
		if(previousattributes[counter][m]!=null&&!previousattributes[counter][m].equals(""))	//if there are filters than pos becomes 1 and other query will be used
			pos=1;
	}
  	System.out.println(pos);
	session.setAttribute("previousattributes0a0",previousattributes[0][0]);		//now setting the attributes which can be accesed on the next page
  	session.setAttribute("previousattributes0a1",previousattributes[0][1]);
  	session.setAttribute("previousattributes0a2",previousattributes[0][2]);
  	session.setAttribute("previousattributes0a3",previousattributes[0][3]);
  	session.setAttribute("previousattributes0a4",previousattributes[0][4]);
  	session.setAttribute("previousattributes0a5",previousattributes[0][5]);
  	session.setAttribute("previousattributes0a8",previousattributes[0][8]);
  	session.setAttribute("previousattributes0a6",previousattributes[0][6]);
  	session.setAttribute("previousattributes0a7",previousattributes[0][7]);
  	session.setAttribute("previousattributes0a9",previousattributes[0][9]);
  	session.setAttribute("previousattributes0a10",previousattributes[0][10]);
  	session.setAttribute("previousattributes0a11",previousattributes[0][11]);
  	session.setAttribute("previousattributes0a12",previousattributes[0][12]);
  	session.setAttribute("previousattributes0a13",previousattributes[0][13]);
  	session.setAttribute("previousattributes0a14",previousattributes[0][14]);
  	session.setAttribute("previousattributes0a15",previousattributes[0][15]);
  	//session.setAttribute("previousattributes0a16",previousattributes[16]);
  	//session.setAttribute("previousattributes0a17",previousattributes[17]);
  	session.setAttribute("previousattributes0a18",previousattributes[0][18]);
  	session.setAttribute("previousattributes0a19",previousattributes[0][19]);
  	session.setAttribute("previousattributes0a20",previousattributes[0][20]);
  	session.setAttribute("previousattributes0a21",previousattributes[0][21]);
  	session.setAttribute("previousattributes0a22",previousattributes[0][22]);
  	session.setAttribute("previousattributes0a23",previousattributes[0][23]);
  	session.setAttribute("previousattributes0a24",previousattributes[0][24]);
  	session.setAttribute("previousattributes0a25",previousattributes[0][25]);
  	session.setAttribute("previousattributes0a26",previousattributes[0][26]);
  	session.setAttribute("previousattributes0a27",previousattributes[0][27]);
  	session.setAttribute("previousattributes0a28",previousattributes[0][28]);
  	
  	session.setAttribute("previousattributes1a0",previousattributes[1][0]);		//now setting the attributes which can be accesed on the next page
  	session.setAttribute("previousattributes1a1",previousattributes[1][1]);
  	session.setAttribute("previousattributes1a2",previousattributes[1][2]);
  	session.setAttribute("previousattributes1a3",previousattributes[1][3]);
  	session.setAttribute("previousattributes1a4",previousattributes[1][4]);
  	session.setAttribute("previousattributes1a5",previousattributes[1][5]);
  	session.setAttribute("previousattributes1a8",previousattributes[1][8]);
  	session.setAttribute("previousattributes1a6",previousattributes[1][6]);
  	session.setAttribute("previousattributes1a7",previousattributes[1][7]);
  	session.setAttribute("previousattributes1a9",previousattributes[1][9]);
  	session.setAttribute("previousattributes1a10",previousattributes[1][10]);
  	session.setAttribute("previousattributes1a11",previousattributes[1][11]);
  	session.setAttribute("previousattributes1a12",previousattributes[1][12]);
  	session.setAttribute("previousattributes1a13",previousattributes[1][13]);
  	session.setAttribute("previousattributes1a14",previousattributes[1][14]);
  	session.setAttribute("previousattributes1a15",previousattributes[1][15]);
  	//session.setAttribute("previousattributes1a16",previousattributes[16]);
  	//session.setAttribute("previousattributes1a17",previousattributes[17]);
  	session.setAttribute("previousattributes1a18",previousattributes[1][18]);
  	session.setAttribute("previousattributes1a19",previousattributes[1][19]);
  	session.setAttribute("previousattributes1a20",previousattributes[1][20]);
  	session.setAttribute("previousattributes1a21",previousattributes[1][21]);
  	session.setAttribute("previousattributes1a22",previousattributes[1][22]);
  	session.setAttribute("previousattributes1a23",previousattributes[1][23]);
  	session.setAttribute("previousattributes1a24",previousattributes[1][24]);
  	session.setAttribute("previousattributes1a25",previousattributes[1][25]);
  	session.setAttribute("previousattributes1a26",previousattributes[1][26]);
  	session.setAttribute("previousattributes1a27",previousattributes[1][27]);
  	session.setAttribute("previousattributes1a28",previousattributes[1][28]);
  	
  	session.setAttribute("previousattributes2a0",previousattributes[2][0]);		//now setting the attributes which can be accesed on the next page
  	session.setAttribute("previousattributes2a1",previousattributes[2][1]);
  	session.setAttribute("previousattributes2a2",previousattributes[2][2]);
  	session.setAttribute("previousattributes2a3",previousattributes[2][3]);
  	session.setAttribute("previousattributes2a4",previousattributes[2][4]);
  	session.setAttribute("previousattributes2a5",previousattributes[2][5]);
  	session.setAttribute("previousattributes2a8",previousattributes[2][8]);
  	session.setAttribute("previousattributes2a6",previousattributes[2][6]);
  	session.setAttribute("previousattributes2a7",previousattributes[2][7]);
  	session.setAttribute("previousattributes2a9",previousattributes[2][9]);
  	session.setAttribute("previousattributes2a10",previousattributes[2][10]);
  	session.setAttribute("previousattributes2a11",previousattributes[2][11]);
  	session.setAttribute("previousattributes2a12",previousattributes[2][12]);
  	session.setAttribute("previousattributes2a13",previousattributes[2][13]);
  	session.setAttribute("previousattributes2a14",previousattributes[2][14]);
  	session.setAttribute("previousattributes2a15",previousattributes[2][15]);
  	//session.setAttribute("previousattributes2a16",previousattributes[16]);
  	//session.setAttribute("previousattributes2a17",previousattributes[17]);
  	session.setAttribute("previousattributes2a18",previousattributes[2][18]);
  	session.setAttribute("previousattributes2a19",previousattributes[2][19]);
  	session.setAttribute("previousattributes2a20",previousattributes[2][20]);
  	session.setAttribute("previousattributes2a21",previousattributes[2][21]);
  	session.setAttribute("previousattributes2a22",previousattributes[2][22]);
  	session.setAttribute("previousattributes2a23",previousattributes[2][23]);
  	session.setAttribute("previousattributes2a24",previousattributes[2][24]);
  	session.setAttribute("previousattributes2a25",previousattributes[2][25]);
  	session.setAttribute("previousattributes2a26",previousattributes[2][26]);
  	session.setAttribute("previousattributes2a27",previousattributes[2][27]);
  	session.setAttribute("previousattributes2a28",previousattributes[2][28]);
  	
  	session.setAttribute("previousattributes3a0",previousattributes[counter][0]);		//now setting the attributes which can be accesed on the next page
  	session.setAttribute("previousattributes3a1",previousattributes[counter][1]);
  	session.setAttribute("previousattributes3a2",previousattributes[counter][2]);
  	session.setAttribute("previousattributes3a3",previousattributes[counter][3]);
  	session.setAttribute("previousattributes3a4",previousattributes[counter][4]);
  	session.setAttribute("previousattributes3a5",previousattributes[counter][5]);
  	session.setAttribute("previousattributes3a8",previousattributes[counter][8]);
  	session.setAttribute("previousattributes3a6",previousattributes[counter][6]);
  	session.setAttribute("previousattributes3a7",previousattributes[counter][7]);
  	session.setAttribute("previousattributes3a9",previousattributes[counter][9]);
  	session.setAttribute("previousattributes3a10",previousattributes[counter][10]);
  	session.setAttribute("previousattributes3a11",previousattributes[counter][11]);
  	session.setAttribute("previousattributes3a12",previousattributes[counter][12]);
  	session.setAttribute("previousattributes3a13",previousattributes[counter][13]);
  	session.setAttribute("previousattributes3a14",previousattributes[counter][14]);
  	session.setAttribute("previousattributes3a15",previousattributes[counter][15]);
  	//session.setAttribute("previousattributes3a16",previousattributes[16]);
  	//session.setAttribute("previousattributes3a17",previousattributes[17]);
  	session.setAttribute("previousattributes3a18",previousattributes[counter][18]);
  	session.setAttribute("previousattributes3a19",previousattributes[counter][19]);
  	session.setAttribute("previousattributes3a20",previousattributes[counter][20]);
  	session.setAttribute("previousattributes3a21",previousattributes[counter][21]);
  	session.setAttribute("previousattributes3a22",previousattributes[counter][22]);
  	session.setAttribute("previousattributes3a23",previousattributes[counter][23]);
  	session.setAttribute("previousattributes3a24",previousattributes[counter][24]);
  	session.setAttribute("previousattributes3a25",previousattributes[counter][25]);
  	session.setAttribute("previousattributes3a26",previousattributes[counter][26]);
  	session.setAttribute("previousattributes3a27",previousattributes[counter][27]);
  	session.setAttribute("previousattributes3a28",previousattributes[3][28]);
  	
  	session.setAttribute("previousattributes4a0",previousattributes[4][0]);		//now setting the attributes which can be accesed on the next page
  	session.setAttribute("previousattributes4a1",previousattributes[4][1]);
  	session.setAttribute("previousattributes4a2",previousattributes[4][2]);
  	session.setAttribute("previousattributes4a3",previousattributes[4][3]);
  	session.setAttribute("previousattributes4a4",previousattributes[4][4]);
  	session.setAttribute("previousattributes4a5",previousattributes[4][5]);
  	session.setAttribute("previousattributes4a8",previousattributes[4][8]);
  	session.setAttribute("previousattributes4a6",previousattributes[4][6]);
  	session.setAttribute("previousattributes4a7",previousattributes[4][7]);
  	session.setAttribute("previousattributes4a9",previousattributes[4][9]);
  	session.setAttribute("previousattributes4a10",previousattributes[4][10]);
  	session.setAttribute("previousattributes4a11",previousattributes[4][11]);
  	session.setAttribute("previousattributes4a12",previousattributes[4][12]);
  	session.setAttribute("previousattributes4a13",previousattributes[4][13]);
  	session.setAttribute("previousattributes4a14",previousattributes[4][14]);
  	session.setAttribute("previousattributes4a15",previousattributes[4][15]);
  	//session.setAttribute("previousattributes4a16",previousattributes[16]);
  	//session.setAttribute("previousattributes4a17",previousattributes[17]);
  	session.setAttribute("previousattributes4a18",previousattributes[4][18]);
  	session.setAttribute("previousattributes4a19",previousattributes[4][19]);
  	session.setAttribute("previousattributes4a20",previousattributes[4][20]);
  	session.setAttribute("previousattributes4a21",previousattributes[4][21]);
  	session.setAttribute("previousattributes4a22",previousattributes[4][22]);
  	session.setAttribute("previousattributes4a23",previousattributes[4][23]);
  	session.setAttribute("previousattributes4a24",previousattributes[4][24]);
  	session.setAttribute("previousattributes4a25",previousattributes[4][25]);
  	session.setAttribute("previousattributes4a26",previousattributes[4][26]);
  	session.setAttribute("previousattributes4a27",previousattributes[4][27]);
  	session.setAttribute("previousattributes4a28",previousattributes[4][28]);
  	
  	for(int ab=0;ab<=counter;ab++)
  	{	
  	matter[ab][0]="?ab"+ab+" <SUB:> ?c . FILTER regex(?c,'";   		//queries for each type of attribute
  	//System.out.println(subject";
  	matter[ab][1]="?ab"+ab+"  <SUB:> ?d . FILTER regex(?d,'";
  	//System.out.println(subjectand";
  	matter[ab][2]="";
  	//System.out.println(subjector";
  	matter[ab][3]="?ab"+ab+"  <CONTENT:> ?b . FILTER regex(?b,'";
  	//System.out.println(content";
  	matter[ab][4]="?ab"+ab+"  <CONTENT:> ?d . FILTER regex(?d,'";
  	//System.out.println(contentand";
  	matter[ab][5]="contentor";
  	//System.out.println(contentor";
  	matter[ab][6]="?ab"+ab+"  <ATTACHEMENTNAME:> ?e . FILTER regex(?e,'";
  	//System.out.println(attachment";
  	matter[ab][7]="?ab"+ab+"  <ATTACHEMENTNAME:> ?f . FILTER regex(?f,'";
  	//System.out.println(attachmentand";
  	matter[ab][8]="attachmentor";
  	//System.out.println(attachmentor";
 	matter[ab][9]="?ab"+ab+"  <FROMFULL:> ?q .FILTER regex(?q,'";
  	//System.out.println(from";
  	matter[ab][10]="?ab"+ab+"  <FROMFULL:>  ?r .FILTER regex(?r,'";
  	//System.out.println(fromand";
  	matter[ab][11]="fromor";
  	//System.out.println(fromor";
  	matter[ab][12]="?ab"+ab+"  <TOFULL:>  ?s .FILTER regex(?s,'";
  	//System.out.println(to";
  	matter[ab][13]="?ab"+ab+"  <TOFULL:>  ?t .FILTER regex(?t,'";
  	//System.out.println(toand";
  	matter[ab][14]="toor";
  	//System.out.println(toor";
  	matter[ab][15]="?ab"+ab+"  <REPLIEDTO:> '";
  	//System.out.println(reply";
  	//matter[16]="?ab <REPLIEDTO:> '";
  	//System.out.println(replyand";
  	//matter[17]="replyor";
  	//System.out.println(replyor";
  	matter[ab][18]="?ab"+ab+"  <CC:> '";
  	//System.out.println(cc";
  	matter[ab][19]="?ab"+ab+"  <CC:> '";
  	//System.out.println(ccor";
  	//System.out.println(ccand";
  	matter[ab][20]="ccor";
  	matter[ab][21]="?ab"+ab+"  <BCC:> '";
  	//System.out.println(bcc";
  	matter[ab][22]="?ab"+ab+"  <BCC:> '";
  	//System.out.println(bccand";
  	matter[ab][23]="bccor";
  	//System.out.println(bccor";
  	matter[ab][24]="?ab"+ab+"  <DATE:> ?l . FILTER (?l >= <http://www.w3.org/2001/XMLSchema#dateTime>('";
  	//System.out.println(date";
  	matter[ab][25]="?ab"+ab+"  <DATE:> ?l . FILTER (?l >= <http://www.w3.org/2001/XMLSchema#dateTime>('";;
  	//System.out.println(dateand";
  	matter[ab][26]="?ab"+ab+"  <DATE:> ?m . FILTER (?m <= <http://www.w3.org/2001/XMLSchema#dateTime>('";;
  	matter[ab][27]="?ab"+ab+"  <ATTACHEMENTNAME:> ?n . FILTER regex(?n,'";
  	matter[ab][28]="?ab"+ab+"  <LINK:> ?o . FILTER regex(?o,'";
  	}
  	//System.out.println(dateor";
	//for or queries will be different
	matteror[counter][0]="{?ab"+counter+" <SUB:> ?g .FILTER regex(?g,'"+previousattributes[counter][0]+"','i')} UNION {?ab <SUB:> ?h .FILTER regex(?h,'"+previousattributes[counter][2]+"','i')} . ";
	matteror[counter][1]="{?ab"+counter+" <CONTENT:> ?g .FILTER regex(?g,'"+previousattributes[counter][3]+"','i')} UNION {?ab <CONTENT:> ?h .FILTER regex(?h,'"+previousattributes[counter][5]+"','i')} . ";
	matteror[counter][2]="{?ab"+counter+" <ATTACHEMENTNAME:> ?g .FILTER regex(?g,'"+previousattributes[counter][6]+"','i')} UNION {?ab <ATTACHEMENTNAME:> ?h .FILTER regex(?h,'"+previousattributes[counter][8]+"','i')} . ";
	matteror[counter][3]="{?ab"+counter+" <FROMFULL:> ?g .FILTER regex(?g,'"+previousattributes[counter][9]+"','i')} UNION {?ab <FROMFULL:> ?h .FILTER regex(?h,'"+previousattributes[counter][11]+"','i')} . ";
	matteror[counter][4]="{?ab"+counter+" <TOFULL:> ?g .FILTER regex(?g,'"+previousattributes[counter][12]+"','i')} UNION {?ab <TOFULL:> ?h .FILTER regex(?h,'"+previousattributes[counter][14]+"','i')} . ";
	matteror[counter][5]="{?ab"+counter+" <CC:> ?g .FILTER regex(?g,'"+previousattributes[counter][18]+"','i')} UNION {?ab <CC:> ?h .FILTER regex(?h,'"+previousattributes[counter][20]+"','i')} . ";
	matteror[counter][7]="{?ab"+counter+" <BCC:> ?g .FILTER regex(?g,'"+previousattributes[counter][21]+"','i')} UNION {?ab <BCC:> ?h .FILTER regex(?h,'"+previousattributes[counter][23]+"','i')} . ";

	//String query="SELECT ?x WHERE { ?a <SUB:> ?x .";
	String query="";
	String x;
	int oldcounter;
	
	if(session.getAttribute("oldcounter")!=null)
	 oldcounter=Integer.parseInt(session.getAttribute("oldcounter").toString());
	else 
		oldcounter=0;
	if(oldcounter==counter)
		x=(String)session.getAttribute("next");
	else
	x=request.getParameter("next");
	session.setAttribute("next",x);
	
	if(x==null)
	x="";
	System.out.println("x is : "+x);
	for(int k=counter;k<=counter;k++)
	{		int flag=0;
	x+="FILTER CONTAINS(?z,?name"+k+"){SELECT ?name"+k+" WHERE { ?ab"+k+" <MESSAGEID:> ?name"+k+" .";
	for(int j=0;j<8;j++)			//concatenation of queries
	{	if(j==6)
			continue;
		if(previousattributes[k][3*j+2]!=null&&!previousattributes[k][3*j+2].equals(""))
			x+=matteror[k][j];
		else
		{	
			for(int i=j*3;i<j*3+2;i++)
			{			
				if(previousattributes[k][i]!=null&&!previousattributes[k][i].equals(""))
				{	if(flag==1)
					x=x+".";	
					flag=1;
					if(i==0||i==1||i==3||i==4||i==9||i==10||i==12||i==13||i==6||i==7)
						x=x+matter[k][i]+previousattributes[k][i]+"','i') ";
  					else if(i==24||i==25||i==26)
  						x=x+matter[k][i]+previousattributes[k][i]+"')) ";
  					else
						x=x+matter[k][i]+previousattributes[k][i]+"' ";
				}
			}				
		
		}
	}
if(previousattributes[k][15]!=null&&!previousattributes[k][15].equals(""))
{	if(flag==1)
		x=x+".";	
	x+=matter[15]+previousattributes[k][15]+"' ";
}
for(int i=24;i<29;i++)
{	
	if(previousattributes[k][i]!=null&&!previousattributes[k][i].equals(""))
	{	if(flag==1)
			x+=".";	
		flag=1;
		if(i==0||i==3||i==27||i==28)
			x+=matter[k][i]+previousattributes[k][i]+"','i') ";
		else if(i==24||i==25||i==26)
		x+=matter[k][i]+previousattributes[k][i]+"')) ";
		else
			x+=matter[k][i]+previousattributes[k][i]+"' ";
	}
}	
	}
x+="}}.";
query+=x;


session.setAttribute("oldcounter",counter);
String querysub="SELECT DISTINCT ?x ?ax ?bx ?cx WHERE { ?a <SUB:> ?x .?a <DATE:> ?ax .?a <SENDERNAME:> ?bx . ?a <MESSAGEID:> ?cx .?a <REFERENCES:> ?z . "+query+"}LIMIT 30";			//different queries
String querysend="SELECT (?x as ?u) WHERE { ?a <FROM:> ?x .?a <REFERENCES:> ?z ."+query+"}LIMIT 30";
if(subquery!=null)
{
	
	 querysub="SELECT DISTINCT ?x WHERE { ?a <SUB:> ?x .?a <FROM:> ?u .{"+subquery+"} ."+query;
	 querysend="SELECT ?x  WHERE { ?a <FROM:> ?x .?a <FROM:> ?u .{"+subquery+"} ."+query;
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
     <link href="css/datepicker.css" rel="stylesheet"/>  
     <link href="css/tabs.css" rel="stylesheet"/> 
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
  </head>

  <body>
  
	<% int value=Integer.parseInt(request.getParameter("item"));
     			int value1=value+30;%> 
     			
     			
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
          <form class="navbar-form navbar-right" onsubmit="action='Search.jsp'" method="get">
            <input type="text" class="form-control" placeholder="Search..." name="search">
            <input type="hidden" name="item" value="<%=0%>">  
      

          
          <!--  a href="index.jsp"><input type="submit" value=login style="color: transparent; background-color: transparent; border-color: transparent; cursor: default;"></a-->
          </form>
        </div>
        
      </div>
    </div>

    <div class="container-fluid">
      <div class="row">
        
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li ><a href="gmail_like.jsp?item=<%=value%>">Inbox</a></li>
            <li><a href="Starred.jsp?item=<%=0%>">Starred</a></li>
            <li><a href="Spam.jsp?item=<%=0%>">Spam</a></li>
            <li><a href="Sentmail.jsp?item=<%=0%>">Sentmail</a></li>
            <li><a href="Drafts.jsp?item=<%=0%>">Drafts</a></li>
            <li><a href="Trash.jsp?item=<%=0%>">Trash</a></li>
            <li><a href="Allmail.jsp?item=<%=0%>">All</a></li>
             <li class="active"><a href="conversation.jsp?item=<%=0%>&counter=<%=0%>">Conversation</a></li>
            <li><div style="margin-top:50%;margin-left:27%;color:#428bca;"><strong>Active Filters</strong></strong></div></li><hr style="margin-top:2%;padding:0;">
          </ul>
          <ul>
            <div id="post" style="margin-top:-4%"></div>
        <%int k;
        for(int l=0;l<=counter;l++)
        {for(k=0;k<29;k++)
        { if(previousattributes[l][k]!=null&&!previousattributes[l][k].equals(""))
        	out.println("<a href='conversation.jsp?item=0&counter="+counter+"&"+attributesnames[l][k]+"=huh'>"+attributesnames[l][k]+":"+previousattributes[l][k]+"<i class='fa fa-times-circle fa-fw'>"+"</i>"+"</a><br>");
        }
        }
        %>
          </ul>
        </div>
     </div>
     </div> 
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main" style="margin-top:0px">
          <a href="conversation.jsp?item=<%=value-30%>&counter=<%=0%>" class="classname" style=" margin-top:20px;margin-left:800px;"><p> < </p></a>
			<a href="conversation.jsp?item=<%=value+30%>&counter=<%=0%>" class="classname1" > > </a>
     <h1 class="page-header" style=" margin-top:-40px;">Conversations</h1>   
     <h4 class="page-header" style=" margin-top:-50px; margin-left:720px;"><%out.println(value+"-"+value1); %></h4>  
        
     
      
          
			
          <!--<div class="row placeholders">
          </div>!-->

          <!--<h2 class="sub-header"></h2>-->
           <div class=tab-container >
  <ul class="tabs clearfix" >
    <li> 
      <a href="gmail_like.jsp?item=<%=value%>" >Emails</a> 
    </li>
    <li class=active > 
      <a href="conversation.jsp?item=<%=0%>&counter=<%=0 %>" >Conversation</a> 
    </li>
   
  </ul>
</div>
          
<!--NOTIFICATION STARTS-->
              
                <div class="container-fluid " style="margin-top:0%;margin-left:65%;width:27%;" >
               
                    <div class="panel panel-default ">
                        <div class="panel-heading ">
                            <i class="fa fa-search fa-fw"></i> Search Panel
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="list-group">
                                <form class="list-group-item"  method="get" onsubmit="action='conversation.jsp'"> 
    							 <input type="hidden" name="item" value="<%=0%>">  
    							 <input type="hidden" name="counter" value="<%=counter%>"> 
    				 			<i class="fa fa-arrow-circle-right fa-fw "></i> <span  action="conversation.jsp" onclick="document.getElementById('div1').style.display = 'block';"  style="margin-left:1%">Subject </span>	
                                <span action="conversation.jsp" class=" text-muted small"  onclick="document.getElementById('div19').style.display = 'block';"  style="margin-left:40%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div20').style.display = 'block';" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                
                                <div id="div1" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name" name="subject<%=counter%>" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <div id="div19" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name" name="subjectand<%=counter%>" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <div id="div20" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name" name="subjector<%=counter%>" style="width:100%" onkeypress="serachdisplay(event)"></div>

                                <input type="submit" style="position: absolute; left: -9999px"/>
                                
                                </form>
                                <form class="list-group-item" method="get" onsubmit="action='conversation.jsp'">
                                 <input type="hidden" name="counter" value="<%=counter%>">
                                  <input type="hidden" name="item" value="<%=0%>">  
    							<i class="fa fa-clipboard fa-fw "></i> <span onclick="document.getElementById('div21').style.display = 'block';setValue('Content')"  style="margin-left:1%">Content </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div22').style.display = 'block';"  style="margin-left:40%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div23').style.display = 'block';" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                
                                <div id="div21" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name1" name="content<%=counter%>" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <div id="div22" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name1" name="contentand<%=counter%>" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <div id="div23" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name1" name="contentor<%=counter%>" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <input type="submit" style="position: absolute; left: -9999px"/>
                                </form>
                                <form class="list-group-item" method="get" onsubmit="action='conversation.jsp'">
                                  <input type="hidden" name="item" value="<%=0%>">  
                                   <input type="hidden" name="counter" value="<%=counter%>">
    							<i class="fa fa-paperclip fa-fw "></i> <span onclick="document.getElementById('div24').style.display = 'block';"  style="margin-left:1%">Attachments </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div25').style.display = 'block';"  style="margin-left:28%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div26').style.display = 'block';" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                
                                <div id="div24" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name2" name="attachment<%=counter%>" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                 <div id="div25" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name2" name="attachmentand<%=counter%>" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                  <div id="div26" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name2" name="attachmentor<%=counter%>" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                    <input type="submit" style="position: absolute; left: -9999px"/>
                                </form>
                               <form class="list-group-item" method="get" onsubmit="action='conversation.jsp'">
                                <input type="hidden" name="item" value="<%=0%>">  
                                 <input type="hidden" name="counter" value="<%=counter%>">
    							<i class="fa fa-hand-o-right fa-fw "></i> <span onclick="document.getElementById('div27').style.display = 'block';"  style="margin-left:1%">TO </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div28').style.display = 'block';"  style="margin-left:50%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div29').style.display = 'block';" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                
                                <div id="div27" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name3" name="to<%=counter%>" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <div id="div28" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name" name="toand<%=counter%>" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                 <div id="div29" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name" name="toor<%=counter%>" style="width:100%" onkeypress="serachdisplay(event)"></div> 
                                <input type="submit" style="position: absolute; left: -9999px"/>
                                </form>
                                <form class="list-group-item" method="get" onsubmit="action='conversation.jsp'">
                                  <input type="hidden" name="item" value="<%=0%>">  
                                   <input type="hidden" name="counter" value="<%=counter%>">
    							<i class="fa fa-hand-o-left fa-fw "></i> <span onclick="document.getElementById('div30').style.display = 'block';"  style="margin-left:1%">FROM </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div31').style.display = 'block';"  style="margin-left:42%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div32').style.display = 'block';" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                <div id="div30" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name" name="from<%=counter%>" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <div id="div31" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name4" name="fromand<%=counter%>" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <div id="div32" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name" name="fromor<%=counter%>" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <input type="submit" style="position: absolute; left: -9999px"/>
                                </form>
                                 <form class="list-group-item" method="get" onsubmit="action='conversation.jsp'">
                                  <input type="hidden" name="item" value="<%=0%>">  
    							<i class="fa fa-mail-forward fa-fw "></i> <span onclick="document.getElementById('div33').style.display = 'block';"  style="margin-left:1%">CC </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div34').style.display = 'block';"  style="margin-left:50%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div35').style.display = 'block';" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                <div id="div33" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name" name="cc<%=counter%>" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <div id="div34" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name" name="ccand<%=counter%>" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <div id="div35" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name5" name="ccor<%=counter%>" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <input type="submit" style="position: absolute; left: -9999px"/>
                                </form>
                                <form class="list-group-item" method="get" onsubmit="action='conversation.jsp'">
                                  <input type="hidden" name="item" value="<%=0%>">  
                                   <input type="hidden" name="counter" value="<%=counter%>">
    							<i class="fa fa-mail-reply-all fa-fw "></i> <span onclick="document.getElementById('div36').style.display = 'block';"  style="margin-left:1%">BCC </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div37').style.display = 'block';"  style="margin-left:46%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div38').style.display = 'block';" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                <div id="div36" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name" name="bcc<%=counter%>" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <div id="div37" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name" name="bccand<%=counter%>" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <div id="div38" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name6" name="bccor<%=counter%>" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                <input type="submit" style="position: absolute; left: -9999px"/>
                                </form>
                               <form class="list-group-item" method="get" onsubmit="action='conversation.jsp'">
                                <input type="hidden" name="item" value="<%=0%>">  
                                 <input type="hidden" name="counter" value="<%=counter%>">
    							<i class="fa fa-calendar fa-fw "></i> <span onclick="document.getElementById('div39').style.display = 'block';"  style="margin-left:1%">Date </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div40').style.display = 'block';"  style="margin-left:36%"><em> After <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div41').style.display = 'block';" style="margin-left:3%"><em>Before <i class="fa fa-angle-down"></i></em>
                                </span>
 <div   class="input-group date" data-date="2014-02-2" data-date-format="yyyy-mm-dd"  id="div39" style="display:none;margin-left:10%;margin-top:2%;">
      <span class="input-group-addon" style="width:20px;height:34px;"><i class="glyphicon glyphicon-calendar" ></i></span><input class="form-control" type="text"  placeholder="2012-02-12"  id="name7" name="date<%=counter%>" style="width:60%;margin-left:17.5%;margin-top:-14.7%;" ></div>
                  <script type="text/javascript">
               $('#div39').datepicker();
             </script>
                                 <div   class="input-group date" data-date="2012-02-12" data-date-format="yyyy-mm-dd"  id="div40" style="display:none;margin-left:10%;margin-top:2%;">
      <span class="input-group-addon" style="width:20px;height:34px;"><i class="glyphicon glyphicon-calendar" ></i></span><input class="form-control" type="text"  name="dateand<%=counter%>" placeholder="2012-02-12"  id="name8" style="width:60%;margin-left:17.5%;margin-top:-14.7%;" ></div>
                  <script type="text/javascript">
               $('#div40').datepicker();
             </script>
              <div   class="input-group date" data-date="2012-02-12" data-date-format="yyyy-mm-dd"  id="div41" style="display:none;margin-left:10%;margin-top:2%;">
      <span class="input-group-addon" style="width:20px;height:34px;"><i class="glyphicon glyphicon-calendar" ></i></span><input class="form-control" type="text"  name="dateor<%=counter%>" placeholder="2012-02-12"  id="name9" style="width:60%;margin-left:17.5%;margin-top:-14.7%;" ></div>
                  <script type="text/javascript">
               $('#div41').datepicker();
             </script>                   <input type="submit" style="position: absolute; left: -9999px"/>
                                </form>
                                <form class="list-group-item" method="get" onsubmit="action='conversation.jsp'">
                                  <input type="hidden" name="item" value="<%=0%>">  
                                   <input type="hidden" name="counter" value="<%=counter%>">
    							<i class="fa fa-file-text fa-fw "></i> <span onclick="document.getElementById('div42').style.display = 'block';"  style="margin-left:1%">In Reply To </span>	
                                
                                <div id="div42" style="display:none;margin-left:10%;margin-top:2%;" ><input class="textbox" type="text" placeholder="Enter Value" id="name" name="reply<%=counter%>" style="width:100%" onkeypress="serachdisplay(event)"></div>
                                
                                <input type="submit" style="position: absolute; left: -9999px"/>
                                </form>
                               <form class="list-group-item" method="get"  action="conversation.jsp">
                                <input type="hidden" name="item" value="<%=0%>">  
                                 <input type="hidden" name="counter" value="<%=counter%>">
    							<i class="fa fa-check fa-fw "></i> <span style="margin-left:1%">Has Attachments</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="checkbox" onChange="this.form.submit()" name="hasattachment<%=counter%>" value="," >
                                <input type="submit"   style="position: absolute; left: -9999px"/>
                                </form>
                                <form class="list-group-item" method="get"  action="conversation.jsp">
                                <input type="hidden" name="item" value="<%=0%>">  
                                <input type="hidden" name="counter" value="<%=counter%>">
    							<i class="fa fa-check fa-fw "></i> <span style="margin-left:1%">Has Link</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="checkbox" onChange="this.form.submit()" name="haslink<%=counter%>" value="," >
                                <input type="submit"   style="position: absolute; left: -9999px"/>
                                </form>
                                
                            </div>
                            <!-- /.list-group -->
                            <a href="conversation.jsp?item=0&counter=<%=counter+1%>&next=<%=x %>" class="btn btn-default btn-block">Details for another Mail</a>

                        </div>
                        <!-- /.panel-body -->
                    </div>
              <!--NOTIFICATION ENDS-->
         	

          <div  class="table-responsive" style="margin-top:-650px;margin-left:-940px;font-size:15px;width:900px;background-color: #f5f5f5">
           
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
            if(pos!=1&&counter==0)
           demo.mai("SELECT DISTINCT ?x ?ax ?bx ?cx WHERE { ?a <SUB:> ?x .?a <DATE:> ?ax .?a <SENDERNAME:> ?bx . ?a <MESSAGEID:> ?cx. ?a <REFERENCES:> ?z .FILTER regex(?z,'<','i')} LIMIT 30 OFFSET"+value);
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
                	dat[i] = dat[i].replace(":","");
                 	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd'T'HHmmssz");
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
            	out.println("<tr height='5'><td width='120'style='font-size:15px'>"+nam[i]+"</td><td width='400'>"+"<a href='convresult.jsp?itemId="+mailid[i]+"' class='button grow' style=' text-decoration: none; color:black;font-size:15px;'>"+"&nbsp&nbsp&nbsp&nbsp"+id[i]+"<hr style='border-color:#E6E6E6;padding:0px;margin:0px'>"+"</a>"+"</td><td width='90' style='font-size:12px'>"+""+dat[i]+"</td>"+"</tr>");
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