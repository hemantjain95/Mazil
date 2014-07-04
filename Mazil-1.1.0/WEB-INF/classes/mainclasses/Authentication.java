
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

package mainclasses;
import java.util.Properties;

import javax.mail.Folder;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.NoSuchProviderException;
import javax.mail.Session;
import javax.mail.Store;
import javax.mail.*;

public class Authentication 
{
    public static int flag1=0;
    public static int mai(String args[]) 
    {
        Properties props = System.getProperties();
        props.setProperty("mail.store.protocol", "imaps");
        try 
        {   
            String[] credentials=new String[2];int k=0;
            for (String s: args) 
            {
                System.out.println(s+"HI");
                credentials[k]=s;
                k++;
                if(k==2)
                    break;
            }
            Session session = Session.getDefaultInstance(props, null);
            Store store = session.getStore("imaps");
            store.connect("imap.gmail.com", credentials[0], credentials[1]);
            System.out.println(store);
            flag1=1;
            return flag1;
        } 
        catch (NoSuchProviderException e) 
        {
            flag1=0;
            return flag1;
        }    
        catch (MessagingException e) 
        {
            flag1=0;
            return flag1;
        }

    }   

}
