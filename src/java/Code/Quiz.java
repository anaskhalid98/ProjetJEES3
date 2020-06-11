package Code;


import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

public class Quiz {
    private ArrayList<String> questions=new ArrayList<>();
    private String quiz_title;
    private String csv_path;

    public ArrayList<String> getQuestionsAsArrayList(HttpServletRequest request){
        String question=null;

        for (int i=0;i<10;i++){
            System.out.println(i);
            question=request.getParameter("Question"+Integer.toString(i+1));
            questions.add(i,question);
        }
        return   questions;
    }

    public String getQuizTitle(HttpServletRequest request){
        quiz_title=request.getParameter("QuizTitle");
        return quiz_title;
    }

    public String getCSVPath(HttpServletRequest request){
        csv_path=request.getParameter("CSV_Path");
        return csv_path;
    }
}
