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
    private AiConfiguration aiConfig; // Inject AiConfiguration to manage AI model and response

    @PostMapping("/HumanConvert")
    public String HumanConvert(@RequestParam("inputLanguage") String inlang,
                               @RequestParam("outputLanguage") String outlang,
                               @RequestParam("inputCode") String incode, Model model) {

        // Create the user requirements object with dynamic input values
        UsersRequirements usr = new UsersRequirements();
        usr.setInputLanguage(inlang);
        usr.setOutputLanguage(outlang);
        usr.setInputCode(incode);

      
        // Get the response from AI model
        System.out.println(usr);
        String result = aiConfig.getResponse(usr);

        // Add response and user input to the model for the view
        model.addAttribute("result", result);
        model.addAttribute("usr", usr);

        return "TranslationResult"; // View name
    }
}
