
/*  The MIT License (MIT)


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
THE SOFTWARE. 

 * 
 */

/*Program to read the already stored database/dataset 
and display the information of parts of the email using rdf model
*/
//import all the classes
//package check;
package in.ac.iiitd.mazil;
import static com.hp.hpl.jena.query.ReadWrite.READ ;
import static com.hp.hpl.jena.query.ReadWrite.WRITE ;

import com.hp.hpl.jena.query.ReadWrite ;
import com.hp.hpl.jena.query.Dataset ;
import com.hp.hpl.jena.query.Query ;
import com.hp.hpl.jena.query.QueryExecution ;
import com.hp.hpl.jena.query.QueryExecutionFactory ;
import com.hp.hpl.jena.query.QueryFactory ;
import com.hp.hpl.jena.query.QuerySolution ;
import com.hp.hpl.jena.query.ResultSet ;
import com.hp.hpl.jena.tdb.TDBFactory ;
import com.hp.hpl.jena.query.ResultSetFormatter;
import com.hp.hpl.jena.rdf.model.*;
import com.hp.hpl.jena.vocabulary.*;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

import javax.mail.MessagingException;

import com.hp.hpl.jena.sparql.sse.SSE ;
import com.hp.hpl.jena.update.* ;







public class Tdbfullquery extends Object 
{
	public static String[] subject=new String[30];
	public static String[] sendername=new String[30];
	public static String[] date=new String[30];
	public static String[] messageid=new String[30];
	public  void  mai (String s) throws MessagingException, IOException 
	{	long startTime = System.currentTimeMillis();
	    
	    String directory =System.getProperty("user.home")+File.separator+"Mazil"+File.separator+"EMAILADDRESS" ;
	    System.out.println(directory);
	    Dataset ds = TDBFactory.createDataset(directory) ;
	    ds.begin(ReadWrite.READ) ;
	    Model model = ds.getDefaultModel() ;
	    QueryExecution qExec = QueryExecutionFactory.create(s, ds) ;
	    int i=0;
	    try
	    {
	        ResultSet rs = qExec.execSelect() ;
	   		while (rs.hasNext()) 
	   		{
	            QuerySolution qs = rs.next();
	            String rds;
	            if(qs.get("x")!=null)
	            	rds = qs.get("x").toString();
	            else 
	            	rds="hi";
	            if(rds==null)
	                break;
	            //System.out.println(rds);
	            subject[i] = rds;

	            if(qs.get("ax")!=null)
		            rds = qs.get("ax").toString();
		        else 
		        	rds="hi";
		        if(rds==null)
		            break;
		        //System.out.println(rds);
		        date[i] = rds;
		         
			 	if(qs.get("bx")!=null)
		            rds = qs.get("bx").toString();
		        else
		        	rds="hi";
		        if(rds==null)
		            break;
		        //System.out.println(rds);
		            sendername[i] = rds;
		        if(qs.get("cx")!=null)
			        rds = qs.get("cx").toString();
			    else
			    	rds="hi";
			    if(rds==null)
			        break;
			    //System.out.println(rds);
			    messageid[i] = rds;
			     i++;
	        }
	    }
	    finally
	    {
	    	qExec.close() ;
	        ds.commit();
	        ds.end();
	    }
	    long stopTime = System.currentTimeMillis();
	      long elapsedTime = stopTime - startTime;
	      System.out.println(elapsedTime);
	    for(int j=i;j<30;j++)
        	subject[j]="hi";
		for(int j=i;j<30;j++)
       		date[j]="hi";
		for(int j=i;j<30;j++)
        	sendername[j]="hi";
		for(int j=i;j<30;j++)
			messageid[j]="hi";
		//for( i=0;i<30;i++)
    		//System.out.println(sendername[i]);
		//for( i=0;i<30;i++)
    		//System.out.println(subject[i]);
		//for( i=0;i<30;i++)
    		//System.out.println(date[i]);
		//for( i=0;i<30;i++)
			//System.out.println(messageid[i]);
	}
}









