package Servlets;

import Code.SignInForm;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/signin")
public class Signin extends HttpServlet {

    private final String VUE = "/WEB-INF/JspFiles";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher(VUE+"/Signin.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        SignInForm sf = new SignInForm();
        if (sf.signin(req)) {
            this.getServletContext().getRequestDispatcher("/index.jsp").forward(req,resp);
        }
        else {
            this.getServletContext().getRequestDispatcher(VUE+"/Signin.jsp").forward(req,resp);
        }
    }
}
