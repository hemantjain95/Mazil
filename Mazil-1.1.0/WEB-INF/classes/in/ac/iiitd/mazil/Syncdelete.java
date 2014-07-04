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


/*Program to delete the emails that no longer exists*/
//import all the classes needed  



package in.ac.iiitd.mazil;
import java.io.*;
import java.util.*;

import javax.mail.*;
import javax.mail.Flags.Flag;
import javax.mail.internet.*;

import com.sun.mail.imap.IMAPFolder;
import com.sun.mail.imap.IMAPMessage;

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

import in.ac.iiitd.mazil.EMAILRDF; // import this to add properties as entities of email

import com.hp.hpl.jena.rdf.model.Model;
import com.hp.hpl.jena.update.* ;


public class Syncdelete {
	public static void mai(String[] args) throws MessagingException, IOException 
    {	 String[] credentials=new String[4];             //getting the credentials emailid,password,folder of mail and text file name
    	int k=0;
    	for (String s: args) 
    	{
    		System.out.println(s);
    		credentials[k]=s;
    		k++;
    		if(k==4)
    			break;
    	}
        IMAPFolder folder = null;
        Store store = null;
        String subjec = "nosubject";
        Flag flag = null;
        String lastdate="Thu May 22 14:07:24 IST 2014";
        long lastuid;
        long lastvalidity=606896160;
        String dat="x",encod="x",senderaddr="x",receiveraddr="x",cont="x";
        //Directory where the tdb files will be stored
        String directory = "EMAILADDRESS" ;
        
        try 
        { 	
        	//connecting to the server to download the emails
        	Properties props = System.getProperties();
        	props.setProperty("mail.store.protocol", "imaps");
        	Session session = Session.getDefaultInstance(props, null);
        	store = session.getStore("imaps");
        	store.connect("imap.gmail.com",credentials[0], credentials[1] );
        	//folder = (IMAPFolder) store.getFolder("[Gmail]/Spam"); // This doesn't work for other email account
        	//to select the paticular types of mails
        	String foldername=credentials[2];
        	folder = (IMAPFolder) store.getFolder(foldername);// This works for both email account
        	UIDFolder uf = (UIDFolder)folder;
        	if(!folder.isOpen())
        		folder.open(Folder.READ_WRITE);
        	Message[] messages = folder.getMessages();
        	long n=uf.getUIDValidity(); 
        	System.out.println("No of Messages : " + folder.getMessageCount());
        	System.out.println("No of Unread Messages : " + folder.getUnreadMessageCount());
        	//Displaying the info. of the messages
            long uid=0;
            for (int i=0; i < messages.length;i++) 
            {   
            	//System.out.println(i);
            	subjec="nosubject" ;dat="x";encod="x";senderaddr="x";receiveraddr="x";cont="x";
            	MimeMessage msg = (MimeMessage) messages[i];
            	if(i==0)
            		lastuid= uf.getUID(msg)-1;
            	else
            		lastuid=uid; 
               uid = uf.getUID(msg);
               System.out.println("UID:"+uid);
               if(uid==(lastuid+1)){}
               else
               {
            	   System.out.println("msgdeleted");
            	   //remove entries from database
            	   for(int j=(int)lastuid+1;j<=uid;j++)
            	   {
            		   String s="DELETE WHERE{?x <UID:> '"+j+"' }";
            		   //load the dataset    
            		   Dataset ds = TDBFactory.createDataset(directory) ;
            		   try
            		   {
            			   //create the dataset for the tdb store
            			   //write to the tdb dataset
            			   ds.begin(ReadWrite.WRITE) ;
            			   Model model = ds.getDefaultModel() ;
            			  
            			   UpdateRequest ur = UpdateFactory.create(s);
            			   UpdateAction.parseExecute(s	,model);
            		   } 
            		   finally
            		   {	
            			   //qExec.close() ;
            			   ds.commit();
            			   ds.end();
            		   }

            	   }
            	   
               }
               lastuid=uid-1;
            }
        }
        finally 
        {  
        	//closing the connection
        	if (folder != null && folder.isOpen()) 
        	{
        		folder.close(true);
        	}
        	if (store != null)
        	{
        		store.close();
        	}
        }
    }
}
