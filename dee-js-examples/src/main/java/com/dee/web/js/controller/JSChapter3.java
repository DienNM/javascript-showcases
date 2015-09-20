package com.dee.web.js.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author dien.nguyen
 **/

@Controller
@RequestMapping("/chapter3")
public class JSChapter3 {

    @RequestMapping(method = RequestMethod.GET)
    public String getChapter2() {
        return "chapter3/index";
    }

}
