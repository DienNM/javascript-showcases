package com.dee.web.js.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author dien.nguyen
 **/

@Controller
@RequestMapping("/chapter6")
public class JSChapter6 {

    @RequestMapping(method = RequestMethod.GET)
    public String getChapter6() {
        return "chapter6/index";
    }

}
