package com.niit.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.SuplierDAO;
import com.niit.model.Suplier;

@Controller
public class SuplierController {

	@Autowired
	SuplierDAO SuplierDAO;

	boolean flag = true;

	@RequestMapping("/suplier")
	public String showSuplier(Model m) {
		List<Suplier> listSupliers = SuplierDAO.getsupliers();
		m.addAttribute("listSupliers", listSupliers);

		for (Suplier Suplier : listSupliers) {
			System.out.println(Suplier.getsuplierName() + ",");
		}
		flag = false;
		return "Suplier";
	}

	@RequestMapping(value = "/InsertSuplier", method = RequestMethod.POST)
	public String insertSuplierData(@Valid @RequestParam("suplname") String suplname,
			@RequestParam("supldesc") String supldesc,BindingResult results, Model m) {
		List<Suplier> listSupliers;
		if(results.hasErrors())
		{
			listSupliers = SuplierDAO.getsupliers();
			m.addAttribute("listSupliers", listSupliers);
			flag = false;
			return "Suplier";
		}
		Suplier Suplier = new Suplier();
		Suplier.setsuplierName(suplname);
		Suplier.setSuplierDesc(supldesc);

		SuplierDAO.addSuplier(Suplier);

		listSupliers = SuplierDAO.getsupliers();
		m.addAttribute("listSupliers", listSupliers);
		flag = false;
		return "Suplier";
	}

	@RequestMapping("/deleteSuplier/{SuplierId}")
	public String deleteSuplier(@PathVariable("SuplierId") int SuplierId, Model m) {
		Suplier Suplier = SuplierDAO.getSuplier(SuplierId);

		SuplierDAO.deleteSuplier(Suplier);

		List<Suplier> listSupliers = SuplierDAO.getsupliers();
		m.addAttribute("listSupliers", listSupliers);
		flag = false;
		return "Suplier";
	}

	@RequestMapping("/updateSuplier/{SuplierId}")
	public String updateSuplier(@PathVariable("SuplierId") int SuplierId, Model m) {
		Suplier Suplier = SuplierDAO.getSuplier(SuplierId);

		List<Suplier> listSupliers = SuplierDAO.getsupliers();
		m.addAttribute("listSupliers", listSupliers);
		m.addAttribute("SuplierInfo", Suplier);

		return "UpdateSuplier";
	}

	@RequestMapping(value = "/updateSuplier", method = RequestMethod.POST)
	public String updateSuplierInDB(@RequestParam("suplid") int SuplierId, @RequestParam("suplname") String SuplierName,
			@RequestParam("supldesc") String SuplierDesc, Model m) {
		Suplier Suplier = SuplierDAO.getSuplier(SuplierId);
		Suplier.setsuplierName(SuplierName);
		Suplier.setSuplierDesc(SuplierDesc);

		SuplierDAO.updateSuplier(Suplier);

		List<Suplier> listSupliers = SuplierDAO.getsupliers();
		m.addAttribute("listSupliers", listSupliers);

		return "Suplier";
	}

}