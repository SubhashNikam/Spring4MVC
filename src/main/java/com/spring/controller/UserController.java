package com.spring.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.model.User;

@Controller
@RequestMapping("/")
public class UserController {
	
	
	/*
     * This method will serve as default GET handler.
     *
     */
    @RequestMapping(value = { "/createUser"},method = RequestMethod.GET)
    public String newRegistration(ModelMap model) {
        User user = new User();
        model.addAttribute("user", user);
        return "createUser";
    }
 
    /*
     * This method will be called on form submission, handling POST request
     * It also validates the user input
     */
    @RequestMapping(value = { "/createUser"},method = RequestMethod.POST)
    public String saveRegistration(@Valid User user, BindingResult result, ModelMap model){
 
        if(result.hasErrors()) {
                return "createUser";
        }
 
        model.addAttribute("success", "Dear "+ user.getFirstName()+" , your Registration completed successfully");
        return "success";
    }
    /*
     * Method used to populate the country list in view.
     * Note that here you can call external systems to provide real data.
     */
    @ModelAttribute("countries")
    public List<String> initializeCountries() {
 
        List<String> countries = new ArrayList<String>();
        countries.add("USA");
        countries.add("CANADA");
        countries.add("SINGAPORE");
        countries.add("INDIA");
        countries.add("ITALY");
        countries.add("OTHER");
        return countries;
    }
    /*
     * Method used to populate the Sex list in view.
     * Note that here you can call external systems to provide real data.
     */
    @ModelAttribute("sex")
    public List<String> initializeSex() {
        List<String> sex = new ArrayList<String>();
        sex.add("Male");
        sex.add("Female");
        return sex;
    }

}
