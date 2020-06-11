package Servlets;

import Code.Recommandation;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/recommandation")
public class AfficherRecommandationServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        int id_user = (int) session.getAttribute("id_user");
        Recommandation recommandation = new Recommandation();
        req.setAttribute("recommandation",recommandation.getRecommandation(id_user));
        this.getServletContext().getRequestDispatcher("/WEB-INF/JspFiles/recommandation.jsp").forward(req,resp);
    }
}
