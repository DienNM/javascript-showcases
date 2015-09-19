package com.dee.web.js.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author dien.nguyen
 **/

@Controller
@RequestMapping("/chapter2")
public class JSChapter2 {

    @RequestMapping(method = RequestMethod.GET)
    public String getChapter2() {
        return "chapter2/index";
    }

}
