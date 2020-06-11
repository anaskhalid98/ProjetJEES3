package Servlets;

import Code.Database;
import Code.Quiz;
import Code.Reponse;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/ChefProjetShowAnswersServlet")

public class ChefProjetShowAnswersServlet extends HttpServlet {
    private final String VUE = "/WEB-INF/JspFiles";

    @Override

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String user_name=request.getParameter("user_name");
        String nom_quiz=request.getParameter("nom_quiz");

        ArrayList<Reponse>  reponses =new ArrayList<>();
        Database database=new Database();
        int id_quiz;
        Reponse reponse;

        try {
            id_quiz=database.getIDQuiz(nom_quiz);

            for (int id_question:  database.getIDsQuestionOfQuiz(id_quiz)) {
                reponse=database.getReponse(id_question);
                System.out.println(reponse.getQuestion_reponse());
                System.out.println(reponse.getReponse());
                reponses.add(reponse);
            }
            request.setAttribute("reponses",reponses);
            //RequestDispatcher req = request.getRequestDispatcher(VUE+"/ReponseRecommandationChefProjet.jsp");
            //req.forward(request, response);
            request.setAttribute("nom_quiz",nom_quiz);
            request.setAttribute("user_name",user_name);
            this.getServletContext().getRequestDispatcher(VUE+"/ReponseRecommandationChefProjet.jsp").forward(request,response);
        }
        catch (NullPointerException e){

            this.getServletContext().getRequestDispatcher("/ChefProjet.jsp").forward(request,response);
        }
    }
}

