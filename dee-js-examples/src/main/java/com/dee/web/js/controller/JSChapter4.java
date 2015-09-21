package com.dee.web.js.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author dien.nguyen
 **/

@Controller
@RequestMapping("/chapter4")
public class JSChapter4 {

    @RequestMapping(method = RequestMethod.GET)
    public String getChapter4() {
        return "chapter4/index";
    }

}
