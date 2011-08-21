package com.taofumi.share.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/hello")
public class HelloAction {

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView hello() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("hello");
        return mv;
    }
}
