package com.dee.web.js.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author dien.nguyen
 **/

@Controller
@RequestMapping("/chapter1")
public class JSChapter1 {

    @RequestMapping(method = RequestMethod.GET)
    public String getChapter1() {
        return "chapter1/index";
    }

}
