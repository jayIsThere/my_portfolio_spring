package com.project.spring_boot.my_website.page;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PrivatePageController {
    @RequestMapping("/private")
    public String mainPage() {
        return "private";
    }
}
