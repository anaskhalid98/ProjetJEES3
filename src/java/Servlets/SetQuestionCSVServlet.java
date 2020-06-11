package Servlets;

import Code.Database;
import Code.Quiz;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/SetQuestionCSVServlet")

public class SetQuestionCSVServlet extends HttpServlet {
    private final String VUE = "/WEB-INF/JspFiles";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String quiz_title=null;
        String csv_path=null;
        ArrayList<Integer> last_10_id_question=new ArrayList<>();
        int id_quiz=0;
        try {
            Quiz quiz=new Quiz();
            Database database=new Database();

            quiz_title=quiz.getQuizTitle(request);
            database.setQuiz(quiz_title);
            id_quiz=database.getIDQuiz(quiz_title);

            csv_path=quiz.getCSVPath(request);
            database.setQuestionnaireCSV(csv_path);

            last_10_id_question=database.getLast10IDQuestion();

            for (int id_question :last_10_id_question) {
                System.out.println(id_question);
                database.setComposerQuestionQuiz(id_quiz,id_question);
            }

            this.getServletContext().getRequestDispatcher(VUE+"/AdminPoserQuestionnaire.jsp").forward(request,response);

        }
        catch (NullPointerException e){
            System.out.println(e);
            this.getServletContext().getRequestDispatcher("/index.jsp").forward(request,response);
        }

    }
}
