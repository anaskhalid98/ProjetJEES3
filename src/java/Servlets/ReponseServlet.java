package Servlets;

import Code.Reponse;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/reponse")
public class ReponseServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        String[] choice = req.getParameterValues("choice");
        String[] question = req.getParameterValues("question");

        int id = (int) session.getAttribute("id_user");

        Reponse reponse = new Reponse();
        System.out.println("add user response");
        reponse.ajouterReponse(question,choice,id);
        System.out.println("response added");

        req.setAttribute("questionnaire",session.getAttribute("questionnaire"));
        this.getServletContext().getRequestDispatcher("/WEB-INF/JspFiles/home.jsp").forward(req,resp);
    }
}
