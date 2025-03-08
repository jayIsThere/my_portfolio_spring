package com.project.spring_boot.my_website.login;

import com.project.spring_boot.my_website.interceptor.AuthInterceptor;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller
@SessionAttributes("username")
public class LoginController {

    private final AuthInterceptor authInterceptor;

    public LoginController(AuthInterceptor authInterceptor) {
        this.authInterceptor = authInterceptor;
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginMessage() {
        return "login";
    }

    @PostMapping("/login")
    public String loginPage(@RequestParam String username, @RequestParam String password, HttpSession session, ModelMap model) {
        if (authInterceptor.authenticate(username, password)) {
            model.put("username", username); // This is not secure, just for demonstration
            model.put("password", password); // This is not secure, just for demonstration
            session.setAttribute("username", username);
            return "redirect:/index";
        } else {
            model.put("errorMessage", "Invalid username or password");
            return "login";
        }
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }
}
