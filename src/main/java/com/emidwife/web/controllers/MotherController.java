package com.emidwife.web.controllers;


import com.emidwife.web.models.dataAccessObjects.ChildClinicDAO;
import com.emidwife.web.models.dataAccessObjects.ChildDAO;
import com.emidwife.web.models.dataAccessObjects.ChildGivenVaccineDAO;
import com.emidwife.web.models.entities.Child;
import com.emidwife.web.models.entities.ChildClinic;
import com.emidwife.web.models.entities.ChildGivenVaccine;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.sql.SQLException;
import java.util.List;


/**
 * Created by hasini on 9/16/16.
 */

@Controller
@RequestMapping(value="/mother")
public class MotherController {

	@RequestMapping(value="/my_children/{guardianId}", method = RequestMethod.GET)
	public String viewMyChild(@PathVariable(value = "guardianId") String guardianId, ModelMap model) {
		try{
			ChildDAO childDAO = new ChildDAO();
			List<Child> children = childDAO.findAllByGuardianID(guardianId);

			model.addAttribute("child", new Child());
			model.addAttribute("children", children);

		}
		catch (SQLException e) {
			e.printStackTrace();
		}

		return "/mother/my_children";
	}

	@RequestMapping(value="/my_child_details/show", method = RequestMethod.POST)
	public String viewMyChildDetails(@ModelAttribute("child") Child child, ModelMap modelMap) {

		try {
			ChildDAO childDAO = new ChildDAO();
			ChildGivenVaccineDAO childGivenVaccineDAO = new ChildGivenVaccineDAO();
			ChildClinicDAO childClinicDAO = new ChildClinicDAO();

			Child _child = childDAO.findByChildId(child.getChildId());
			List<ChildClinic> childClinics = childClinicDAO.findAllByChildId(child.getChildId());
			List<ChildGivenVaccine> childGivenVaccines = childGivenVaccineDAO.findAllByChildId(child.getChildId());

			modelMap.addAttribute("child", _child);
			modelMap.addAttribute("clinic", childClinics);
			modelMap.addAttribute("given_vacc", childGivenVaccines);

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return "/mother/my_child_details";
	}

}
