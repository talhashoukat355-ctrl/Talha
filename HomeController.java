package com.mycompany.myclassprojects;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.sql.*;

@WebServlet("/")
public class HomeController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String path = req.getServletPath();

        if (path == null || path.equals("/") || path.isEmpty()) {
            showHomePage(req, res);
        } else if (path.equals("/login")) {
            showLoginPage(req, res);
        } else if (path.equals("/register")) {
            showRegisterPage(req, res);
        } else if (path.equals("/welcome")) {
            showWelcomePage(req, res);
        } else {
            showErrorPage(req, res);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String path = req.getServletPath();
        String ctxPath = req.getContextPath();

        if (path.equals("/login")) {
            handleLogin(req, res, ctxPath);

        } else if (path.equals("/register")) {
            handleRegister(req, res, ctxPath);

        } else {
            showErrorPage(req, res);

        }
    }

    private void handleLogin(HttpServletRequest req, HttpServletResponse res, String ctxPath)
            throws ServletException, IOException {

        String name = req.getParameter("username");
        String password = req.getParameter("password");

        if (name == null || name.trim().isEmpty() || password == null || password.trim().isEmpty()) {
            req.setAttribute("error", "Username and password are required");
            showLoginPage(req, res);
            return;
        }

        String sql = "SELECT * FROM users WHERE username = ? AND password = ?";

        try (Connection conn = DBConnection.getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, name.trim());
            ps.setString(2, password);

            try (ResultSet result = ps.executeQuery()) {
                if (result.next()) {
                    System.out.println("Login successful for user: " + name);
                    HttpSession session = req.getSession();
                    session.setAttribute("name", name);
                    res.sendRedirect(ctxPath + "/welcome");
                } else {
                    System.out.println("Login failed - invalid credentials for user: " + name);
                    req.setAttribute("error", "Invalid username or password");
                    showErrorPage(req, res);
                }
            }

        } catch (SQLException e) {
            System.err.println("SQLException during login for user: " + name);
            req.setAttribute("error", "Database error occurred. Please try again later.");
            showErrorPage(req, res);
        }
    }

    private void handleRegister(HttpServletRequest req, HttpServletResponse res, String ctxPath)
            throws ServletException, IOException {

        String name = req.getParameter("username");
        String password = req.getParameter("password");

        if (name == null || name.trim().isEmpty() || password == null || password.trim().isEmpty()) {
            req.setAttribute("error", "Username and password are required");
            showErrorPage(req, res);
            return;
        }

        String sql = "INSERT INTO users (username, password) VALUES (?,?)";

        try (Connection conn = DBConnection.getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, name.trim());
            ps.setString(2, password);

            ps.executeUpdate();
            System.out.println("User registered successfully: " + name);
            res.sendRedirect(ctxPath + "/login");

        } catch (SQLException e) {
            System.err.println("SQLException during registration for user: " + name);
            showRegisterPage(req, res);
        }
    }

    private void showHomePage(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {
        req.getRequestDispatcher("/index.jsp").forward(req, resp);
    }

    private void showLoginPage(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {
        req.getRequestDispatcher("/login.jsp").forward(req, resp);
    }

    private void showWelcomePage(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {
        req.getRequestDispatcher("/welcome.jsp").forward(req, resp);
    }

    private void showErrorPage(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {
        req.getRequestDispatcher("/error.jsp").forward(req, resp);
    }

    private void showRegisterPage(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {
        req.getRequestDispatcher("/register.jsp").forward(req, resp);
    }
}
