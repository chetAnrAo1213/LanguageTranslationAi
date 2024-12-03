package com.boot.AiConfig;

import org.springframework.ai.chat.prompt.Prompt;
import org.springframework.ai.chat.prompt.PromptTemplate;
import org.springframework.ai.ollama.OllamaChatModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.Models.UsersRequirements;

@Service
public class AiConfiguration {

    @Autowired
    private OllamaChatModel olcm;

    public String getResponse(UsersRequirements usr) 
    {	
        String ic = usr.getInputCode();
        String ip = usr.getInputLanguage();
        String op = usr.getOutputLanguage();

        String qry = String.format(
                "Just Translate the given input '%s' which is in language '%s' into another language which is of '%s'  without giving any "
                + "additional information or description or any other cautions. Just translation only.",
                ic, ip, op
            );

        
        PromptTemplate userRequest = new PromptTemplate(qry);


        Prompt prt = userRequest.create();

        return olcm.call(prt).getResult().getOutput().getContent();
    }
}
