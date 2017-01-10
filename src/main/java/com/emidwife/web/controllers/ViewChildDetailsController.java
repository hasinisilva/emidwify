package com.emidwife.web.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.emidwife.web.models.entities.Child;


/**
 * Created by hasini on 11/18/16.
 */
@Controller
public class ViewChildDetailsController {

    @GetMapping("/my_children")
    public String greetingForm(Model model) {
        model.addAttribute("child", new Child());
        return "child";
    }

    @PostMapping("/my_child_details")
    public String greetingSubmit(@ModelAttribute Child child) {
        return "result";
    }

}
