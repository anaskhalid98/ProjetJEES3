package Servlets;

import Code.Questionnaire;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/questionnaire")
public class QuestionnaireServlet extends HttpServlet {

    String VUE = "/WEB-INF/JspFiles";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nom_quiz = req.getParameter("nom_quiz");
        Questionnaire q = new Questionnaire();
        ArrayList<String> questions = q.getQuestion(nom_quiz);
        req.setAttribute("questions",questions);
        req.setAttribute("nom_quiz",nom_quiz);
        this.getServletContext().getRequestDispatcher(VUE+"/Questionnaire.jsp").forward(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }
}
