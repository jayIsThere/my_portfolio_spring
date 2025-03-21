package com.project.spring_boot.my_website.interceptor;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;

@Service
public class AuthInterceptor implements HandlerInterceptor {

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    public String registerUser(String username, String password) {
        return passwordEncoder.encode(password);
    }

    public boolean authenticate(String username, String password) {
        boolean isValidUsername = username.equals("1234");
        String storedPasswordHash = "$2a$12$OKi1rNPXiiLRj/RhK3tG.OiVX/SwjMR9BVKCuiY919VRKJ22.j4uC"; // 예시 해시값 (BCrypt 해시값)

        // 입력된 비밀번호와 저장된 해시된 비밀번호 비교
        return isValidUsername && passwordEncoder.matches(password, storedPasswordHash);
    }

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        if (session.getAttribute("username") == null) {
            // User not logged in, redirect to login page with alert
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().write("<script>alert('You need to login first'); window.location.href='/login';</script>");
            return false;
        }
        return true;
    }
}
