package com.project.spring_boot.my_website.login;

import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    @RequestMapping("/login")
    public String loginMessage() {
        return "login";
    }

    @PostMapping("/login")
    public String loginPage(@RequestParam String username, @RequestParam String password, HttpSession session) {
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
