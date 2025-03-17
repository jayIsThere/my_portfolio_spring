package com.project.spring_boot.my_website.login;

import com.project.spring_boot.my_website.interceptor.AuthInterceptor;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class LoginController {

    private final AuthInterceptor authInterceptor;

    public LoginController(AuthInterceptor authInterceptor) {
        this.authInterceptor = authInterceptor;
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginMessage() {
        return "login";
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String redirectToLogin(HttpSession session) {
        if (session.getAttribute("username") == null) {
            return "redirect:/login"; // If not logged in, redirect to login page
        }
        return "redirect:/index"; // If logged in, redirect to index
    }

    @PostMapping("/login")
    public String loginPage(@RequestParam String username, @RequestParam String password, HttpSession session) {
        if (authInterceptor.authenticate(username, password)) {
            session.setAttribute("username", username);
            return "redirect:/index";
        } else {
            session.setAttribute("errorMessage", "Invalid username or password");
            return "login";
        }
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        System.out.println("User logged out");
        session.invalidate();
        return "redirect:/login";
    }
}

