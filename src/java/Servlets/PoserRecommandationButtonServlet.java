package Servlets;

import Code.Database;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/PoserRecommandationButtonServlet")
public class PoserRecommandationButtonServlet extends HttpServlet {
    private final String VUE = "/WEB-INF/JspFiles";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user_name=request.getParameter("user_name");
        System.out.println("user_name:"+user_name);
        request.setAttribute("user_name",user_name);
        this.getServletContext().getRequestDispatcher(VUE+"/PoserRecommandationChefProjet.jsp").forward(request, response);
    }
}