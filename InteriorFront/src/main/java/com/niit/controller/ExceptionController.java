package com.niit.controller;

import java.io.PrintWriter;
import java.io.StringWriter;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@ControllerAdvice
@EnableWebMvc
public class ExceptionController {
	
	private Log logger=LogFactory.getLog(ExceptionController.class);
	

	@ExceptionHandler(NoHandlerFoundException.class)
	public String handlerNoHandlerFoundException(Model m) {
		
		
		
		m.addAttribute("errorTitle", "The page is not constructed!");
		
		m.addAttribute("errorDescription", "The page you are looking for is not available now!");
		
		m.addAttribute("title", "404 Error Page");
		
		return "error";
	}
	
	
	@ExceptionHandler(ProductNotFoundException.class)
	public ModelAndView handlerProductNotFoundException() {
		
		ModelAndView mv = new ModelAndView("error");
		
		mv.addObject("errorTitle", "Product not available!");
		
		mv.addObject("errorDescription", "The product you are looking for is not available right now!");
		
		mv.addObject("title", "Product Unavailable");
		
		return mv;
	}
		
	
	@ExceptionHandler(Exception.class)
	public ModelAndView handlerException(Exception ex) {
		
		ModelAndView mv = new ModelAndView("error");
		
		mv.addObject("errorTitle", "Contact Your Administrator!!");
		
		
		/* only for debugging your application*/
		StringWriter sw = new StringWriter();
		PrintWriter pw = new PrintWriter(sw);
		
		ex.printStackTrace(pw);
						
		mv.addObject("errorDescription", sw.toString());
		
		mv.addObject("title", "Error");
		
		return mv;
	}


}
