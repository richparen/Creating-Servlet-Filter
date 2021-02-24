package kz.iitu.javaee;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Enumeration;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Login POST");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String status = "false";

        ServletConfig config = getServletConfig();
        Enumeration<String> elements = config.getInitParameterNames();

        while (elements.hasMoreElements()) {
            String elementUsername = elements.nextElement();
            String elementPassword = config.getInitParameter(elementUsername);

            if (elementUsername.equals(username) && elementPassword.equals(password)) {
                status = "true";
                break;
            }
        }

        req.setAttribute("status", status);

        if (status.equals("true")) {
            req.setAttribute("username", username);
            req.setAttribute("password", password);
            System.out.println("GO MAIN PAGE");
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        } else {
            System.out.println("GO LOGIN PAGE");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("login.jsp").forward(req, resp);
    }
}
