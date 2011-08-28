package com.taofumi.share.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.taofumi.share.entity.User;
import com.taofumi.share.service.UserService;

@Controller
@RequestMapping("/share")
public class ShareAction {
    @Autowired
    UserService userService;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView index() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("share/index");
        return mv;
    }

    @RequestMapping(value = "/user/signup", method = RequestMethod.GET)
    public ModelAndView signup() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("share/user/signup");
        return mv;
    }

    @RequestMapping(value = "/user/save", method = RequestMethod.POST)
    @ResponseBody
    public ModelMap addUser(User user) {
        userService.addUser(user);
        ModelMap mm = new ModelMap();
        mm.put("success", "true");
        return mm;
    }

    /**
     * 通过用户表主键删除该用户
     * 
     * @param id
     * @return
     */
    @RequestMapping(value = "/user/del", method = RequestMethod.GET)
    public ModelMap delUser(String id) {
        ModelMap mm = new ModelMap();
        if (userService.delUser(id)) {
            mm.put("success", "true");
        } else {
            mm.put("success", "false");
        }
        return mm;
    }

    /**
     * 修改用户
     * 
     * @param user
     * @return
     */
    @RequestMapping(value = "/user/update", method = RequestMethod.GET)
    @ResponseBody
    public ModelMap updateUser(User user) {
        ModelMap mm = new ModelMap();
        if (userService.updateUser(user)) {
            mm.put("success", "true");
        } else {
            mm.put("success", "false");
        }
        return mm;
    }

    /**
     * 通过用户主键查询用户
     * 
     * @param id
     * @return
     */
    @RequestMapping(value = "/user/query", method = RequestMethod.GET)
    @ResponseBody
    public User queryUserById(int id) {
        return userService.queryUserById(id);
    }

    /**
     * 查询所有用户
     * 
     * @return
     */
    @RequestMapping(value = "/user/queryall", method = RequestMethod.GET)
    @ResponseBody
    public List<User> queryAllUser(int id) {
        return userService.queryAllUser(id);
    }

}
