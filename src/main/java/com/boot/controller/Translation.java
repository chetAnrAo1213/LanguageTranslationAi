package com.boot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.boot.AiConfig.AiConfiguration;
import com.boot.Models.UsersRequirements;

@Controller
public class Translation {

    @Autowired
    private AiConfiguration aiConfig; 

    @PostMapping("/HumanConvert")
    public String HumanConvert(@RequestParam("inputLanguage") String inlang,
                               @RequestParam("outputLanguage") String outlang,
                               @RequestParam("inputCode") String incode, Model model) {

        
        UsersRequirements usr = new UsersRequirements();
        usr.setInputLanguage(inlang);
        usr.setOutputLanguage(outlang);
        usr.setInputCode(incode);

      
        
        System.out.println(usr);
        String result = aiConfig.getResponse(usr);

        
        model.addAttribute("result", result);
        model.addAttribute("usr", usr);

        return "TranslationResult"; 
    }
}
