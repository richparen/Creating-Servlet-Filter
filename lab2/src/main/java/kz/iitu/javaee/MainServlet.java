package kz.iitu.javaee;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class MainServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Main GET");
        if ((String)request.getAttribute("status") == null || ((String)request.getAttribute("status")).equals("false")) {
            System.out.println("Go LOGIN PAGE");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            System.out.println("Go MAIN");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }
}
