package com.project.spring_boot.my_website.interceptor;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

@Component
public class AuthInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        if (session.getAttribute("username") == null) {
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().write("<script>alert('You need to login first'); window.location.href='/login';</script>");
            return false;
        }
        return true;
    }
}
