package Servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/reponseQuiz")
public class AfficherReponseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println(req.getParameter("user_name"));
        System.out.println(req.getParameter("nom_quiz"));
        this.getServletContext().getRequestDispatcher("/WEB-INF/JspFiles/ReponseRecommandationChefProjet.jsp").forward(req,resp);
    }
}
