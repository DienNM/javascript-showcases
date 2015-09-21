package com.dee.web.js.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author dien.nguyen
 **/

@Controller
@RequestMapping("/chapter5")
public class JSChapter5 {

    @RequestMapping(method = RequestMethod.GET)
    public String getChapter5() {
        return "chapter5/index";
    }

}
