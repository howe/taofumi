package com.taofumi.share.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.taofumi.share.entity.User;
import com.taofumi.share.service.UserService;

@Controller
@RequestMapping("/share")
public class ShareAction {
    @Autowired
    UserService userService;

    @RequestMapping(value = "/save", method = RequestMethod.GET)
    public ModelAndView addUser(User user) {
        userService.addUser(user);
        return null;
    }
}
