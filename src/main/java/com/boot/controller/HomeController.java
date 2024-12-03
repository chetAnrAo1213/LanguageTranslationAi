package com.boot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller

public class HomeController 
{
	@GetMapping("/")
	public String homePage() {
	    return "home";
	}

     
    @GetMapping("/HumanTranslate")
    public String humanTransalte()
    {
    	return "HumanTransaltionPage";
    }
    
    @GetMapping("/ProgrammingTranslate")
    public String programmingTransalte()
    {
    	return "ProgrammingTranslationPage";
    }
    
    
    @GetMapping("/SouthAsianTranslate")
    public String transalte()
    {
    	return "South-AsianTranslationPage";
    }
    
    
    @GetMapping("/ScripturesTranslate")
    public String sciputuresTransalte()
    {
    	return "Sciputures";
    }
}

