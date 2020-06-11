package Servlets;

import Code.Database;
import Code.LoginForm;
import Code.Quiz;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/SetQuestionServlet")
public class SetQuestionServlet extends HttpServlet {
    private final String VUE = "/WEB-INF/JspFiles";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String quiz_title=null;
        ArrayList<String> questions=new ArrayList<>();
        int id_quiz;
        int id_question;
        try {
            Quiz quiz=new Quiz();
            quiz_title=quiz.getQuizTitle(request);
            questions=quiz.getQuestionsAsArrayList(request);
            Database database =new Database();
            database.connection();
            database.setQuiz(quiz_title);
            id_quiz=database.getIDQuiz(quiz_title);
            for (String s:questions) {
                database.setQuestion(s);
                id_question=database.getIDQuestion(s);
                database.setComposerQuestionQuiz(id_quiz,id_question);
            }
            //
            this.getServletContext().getRequestDispatcher(VUE+"/AdminPoserQuestionnaire.jsp").forward(request,response);

        }
        catch (NullPointerException e){
            System.out.println(e);
            this.getServletContext().getRequestDispatcher("/index.jsp").forward(request,response);
        }

    }
}
