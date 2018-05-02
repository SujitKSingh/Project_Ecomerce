package com.niit.controller;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
 
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
 
public class orderpdfcontroller {
   public static void create(String data,String username)
   {
      Document document = new Document();
      
      try
      {
    	  System.out.print("PDF created");
         PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream("D:\\eclipse-jee-oxygen-2-win32-x86_64\\oxy workspace\\Project_Ecomerce\\InteriorFront\\src\\main\\webapp\\resources\\file\\"+username+".pdf"));
         document.open();
         document.add(new Paragraph(data));
         document.close();
         writer.close();
      } catch (DocumentException e)
      {
         e.printStackTrace();
      } catch (FileNotFoundException e)
      {
         e.printStackTrace();
      }
   }
}
