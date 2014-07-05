
/*  The MIT License (MIT)

Copyright (c) IIIT-DELHI 
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
THE SOFTWARE. 

 * 
 */

/*Program to read the already stored database/dataset according to the query
and display the information of parts of the email using rdf model
*/

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
import com.hp.hpl.jena.rdf.model.Model ;


public class Tdbquery extends Object {
	public static String[] result=new String[30];   					  //This is the array which stores the result strings
	public  void  mai (String s) throws MessagingException, IOException 
	{
	    
	    String directory ="EMAILADDRESS" ;         						   //directory where data is stored
	    Dataset ds = TDBFactory.createDataset(directory) ;
	    ds.begin(ReadWrite.READ) ;											//reading the database
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
	            	rds="hi";												//instead of null I initialize it with hi which can be tracked later
	            if(rds==null)
	                break;
	            System.out.println(rds);
	           	result[i] = rds;
	           	i++;
	        }
	    }
	    finally
	    {
	    	qExec.close() ;
	        ds.commit();											//closing the database
	        ds.end();
	    }
	    for(int j=i;j<30;j++)
		    result[j]="hi";													//if the query have less than 30 results others are initialised by hi
	    for(i=0;i<30;i++)
	        System.out.println(result[i]);
	}
}









