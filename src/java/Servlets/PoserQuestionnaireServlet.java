package Servlets;

import Code.Questionnaire;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
@WebServlet(value = "/PoserQuestionnaireServlet")
public class PoserQuestionnaireServlet extends HttpServlet {
    String VUE = "/WEB-INF/JspFiles";


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher(VUE+"/AdminPoserQuestionnaire.jsp").forward(req,resp);
    }
}
