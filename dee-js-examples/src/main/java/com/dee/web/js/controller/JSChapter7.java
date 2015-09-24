package com.dee.web.js.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author dien.nguyen
 **/

@Controller
@RequestMapping("/chapter7")
public class JSChapter7 {

    @RequestMapping(method = RequestMethod.GET)
    public String getChapter7() {
        return "chapter7/index";
    }

}
