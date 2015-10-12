package com.dee.web.js.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author dien.nguyen
 **/

@Controller
public class JSChapter {
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        return "index";
    }

    @RequestMapping(value = "/chapter1", method = RequestMethod.GET)
    public String getChapter1() {
        return "chapter1/index";
    }
    
    @RequestMapping(value = "/chapter2", method = RequestMethod.GET)
    public String getChapter2() {
        return "chapter2/index";
    }
    
    @RequestMapping(value = "/chapter3", method = RequestMethod.GET)
    public String getChapter3() {
        return "chapter3/index";
    }
    
    @RequestMapping(value = "/chapter4", method = RequestMethod.GET)
    public String getChapter4() {
        return "chapter4/index";
    }
    
    @RequestMapping(value = "/chapter5", method = RequestMethod.GET)
    public String getChapter5() {
        return "chapter5/index";
    }
    
    @RequestMapping(value = "/chapter6", method = RequestMethod.GET)
    public String getChapter6() {
        return "chapter6/index";
    }
    
    @RequestMapping(value = "/chapter7", method = RequestMethod.GET)
    public String getChapter7() {
        return "chapter7/index";
    }
    
    @RequestMapping(value = "/chapter8", method = RequestMethod.GET)
    public String getChapter8() {
        return "chapter8/index";
    }
    
    @RequestMapping(value = "/chapter9", method = RequestMethod.GET)
    public String getChapter9() {
        return "chapter9/index";
    }
    
    @RequestMapping(value = "/chapter10", method = RequestMethod.GET)
    public String getChapter10() {
        return "chapter10/index";
    }
    
    @RequestMapping(value = "/chapter11", method = RequestMethod.GET)
    public String getChapter11() {
        return "chapter11/index";
    }
    
    @RequestMapping(value = "/chapter12", method = RequestMethod.GET)
    public String getChapter12() {
        return "chapter12/index";
    }
    
    @RequestMapping(value = "/chapter13", method = RequestMethod.GET)
    public String getChapter13() {
        return "chapter13/index";
    }
    
    @RequestMapping(value = "/chapter14", method = RequestMethod.GET)
    public String getChapter14() {
        return "chapter14/index";
    }
    
    @RequestMapping(value = "/chapter15", method = RequestMethod.GET)
    public String getChapter15() {
        return "chapter15/index";
    }
}
