package com.taofumi.share.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.taofumi.share.entity.User;

@Controller
@RequestMapping("/share")
public class ShareAction {

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView addUser(User user) {
        System.out.println("________________" + user.getUserName());
        return null;
    }
}
