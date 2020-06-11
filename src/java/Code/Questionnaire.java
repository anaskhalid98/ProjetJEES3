package Code;

import javax.servlet.http.HttpServletRequest;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class Questionnaire {

    public ArrayList<String> getQuestionnaire() {

        Database db = new Database();
        ArrayList<String> array = new ArrayList<>();
        try {
            Connection connection = db.connection();
            Statement statement = connection.createStatement();
            String sqlQuery = "select * from quiz";
            ResultSet rs = statement.executeQuery(sqlQuery);
            while (rs.next()) {
                array.add(rs.getString("nom_quiz"));
            }
        }
        catch (Exception e) {
            System.out.println(e);
        }
        return array;

    }

    public ArrayList<String> getQuestion(String nom_quiz) {

        Database db = new Database();
        ArrayList<String> array = new ArrayList<>();
        try {
            Connection connection = db.connection();
            Statement statement = connection.createStatement();
            int id_quiz = getIdQuiz(nom_quiz);
            System.out.println(id_quiz);
            String sqlQuery = "select * from composer where id_quiz="+id_quiz+";";
            ResultSet rs = statement.executeQuery(sqlQuery);
            while (rs.next()) {
                Statement s = connection.createStatement();
                String query = "select * from question where id_question="+rs.getInt("id_question")+";";
                ResultSet rs_question = s.executeQuery(query);
                while (rs_question.next()) {
                    array.add(rs_question.getString("nom_question"));
                }
            }
        }
        catch (Exception e) {
            System.out.println(e);
        }
        return array;

    }

    public int getIdQuiz(String nom_quiz) {
        Database db = new Database();
        try {
            Connection connection = db.connection();
            Statement statement = connection.createStatement();
            String sqlQuery = "select * from quiz where nom_quiz='"+nom_quiz+"';";
            ResultSet rs = statement.executeQuery(sqlQuery);
            while (rs.next()) {
                return rs.getInt("id_quiz");
            }
        }
        catch (Exception e) {
            System.out.println(e);
        }
        return 0;
    }

}
