package com.project.spring_boot.my_website.login;

import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {


    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginMessage() {
        return "login";
    }

    @PostMapping("/login")
    public String loginPage(@RequestParam String username, @RequestParam String password, HttpSession session, ModelMap model) {
        model.put("username", username); // This is not secure, just for demonstration
        model.put("password", password); // This is not secure, just for demonstration

        if ("1234".equals(username) && "password".equals(password)) {
            session.setAttribute("username", username);
            return "redirect:/index";
        } else {
            return "redirect:/login?error=true";
        }
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }
}
