package com.niit.emailsend;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.niit.controller.EmailUtility;

public class App 
{
    public static void sendmail(String to,String from,String subject, String desc)
    {
    	ApplicationContext context = 
             new ClassPathXmlApplicationContext("web1.xml");
    	 
    	EmailUtility mm = (EmailUtility) context.getBean("mailMail");
        mm.sendMail(from,
    		   to,
    		   subject, 
    		   desc);
        
    }
}

