package com.niit.controller;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

public class CreateTable {
	public static void main(String[] args) throws FileNotFoundException, DocumentException {
		 Document document = new Document();
		 PdfPTable table = new PdfPTable(new float[] { 2, 1, 2 });
	     table.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
		 table.addCell("");
         table.addCell("");
         table.addCell("");
	     table.setHeaderRows(1);
	     PdfPCell[] cells = table.getRow(0).getCells(); 
	     for (int j=0;j<cells.length;j++){
	    	 cells[j].setBackgroundColor(BaseColor.GRAY);
	     }
	    
         for (int i=1;i<5;i++){
    		 table.addCell("Name:"+i);
             table.addCell("Age:"+i);
             table.addCell("Location:"+i);
         }
         
         
         PdfPTable table1 = new PdfPTable(new float[] { 6 });
	     table1.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
		 table1.addCell("Your Order Summary");
	     table1.setHeaderRows(1);
	     PdfPCell[] cells1 = table.getRow(0).getCells(); 
	     for (int j=0;j<cells1.length;j++){
	    	 cells1[j].setBackgroundColor(BaseColor.GRAY);
	     }
         for (int i=1;i<2;i++){
    		 table1.addCell("Personal Details:");	 
         }
         
	     PdfWriter.getInstance(document, new FileOutputStream("sample3.pdf"));
	     document.open();
	     document.add(table1);
         document.add(table);
	     document.close();
	     System.out.println("Done");
	}
}
