package Code;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;

public class Reponse {

    private Database db = new Database();
    private Connection connection = db.connection();
    private String question_reponse;
    private String reponse;

    public Reponse(){

    }

    public String getQuestion_reponse(){
        return question_reponse;
    }
    public String getReponse(){
        return reponse;
    }

    public void setQuestion_reponse(String question_reponse){
        this.question_reponse=question_reponse;
    }

    public void setReponse(String reponse){
        this.reponse=reponse;
    }

    public String getColorTrueFalse(String reponse){
        String color = null;
        if(reponse.equals("false")){
            color="text-danger";
            return color;
        }
        color="text-success";
        return color;
    }

    public void ajouterReponse(String[] questions , String[] choices,int id_user) {

        int n = questions.length;
        int id_question = 0 ;
        try {
            for (int i  = 0 ; i < n ; i++ ) {
                /* insert into reponse */
                Statement statement = connection.createStatement();
                id_question = getIdQuestion(questions[i]);
                String sqlQuery = "insert into reponse (choix_reponse,id_question) values ('"+choices[i]+"',"+id_question+");";
                statement.executeUpdate(sqlQuery,statement.RETURN_GENERATED_KEYS);
                int id_reponse = 0 ;
                ResultSet rs = statement.getGeneratedKeys();
                while (rs.next()) id_reponse = rs.getInt(1);
                System.out.println("id _reponse => "+id_reponse);
                /* insert into repondre */
                Statement statement1  = connection.createStatement();
                String sqlQuery1 = "insert into repondre values ("+id_reponse+","+id_user+");";
                statement1.executeUpdate(sqlQuery1);
            }
        }
        catch (Exception e) {
            System.out.println(e);
        }
    }

    public int getIdQuestion(String nom_question) {
        try {
            String sqlQuery = "select * from question where nom_question = '"+nom_question+"';";
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(sqlQuery);
            while (rs.next()) return rs.getInt("id_question");
        }
        catch (Exception e ){
            System.out.println(e);
        }
        return 0;
    }

    public ArrayList<String[]> getQuestionnairesRepondus() {
        ArrayList<String[]> questionnairesRepondus = new ArrayList<>();
        try {
            Statement statement1 = connection.createStatement();
            String query1 = "select * from repondre;";
            ResultSet rs1 = statement1.executeQuery(query1);
            while (rs1.next()) {
                int id_user = rs1.getInt("id_user");
                int id_reponse = rs1.getInt("id_reponse");
                int id_question = getIdQuestion1(id_reponse);
                int id_quiz = getIdQuiz(id_question);
                String nom_quiz = getQuizName(id_quiz);
                String username = getUserName(id_user);
                String[] array = new String[2];
                array[0] = username;
                array[1] = nom_quiz;
                questionnairesRepondus.add(array);
            }
        }
        catch (Exception e){
            System.out.println(e);
        }
        remove(questionnairesRepondus);
        return questionnairesRepondus;
    }

    public int getIdQuestion1(int id_reponse) {
        try {
            Statement statement = connection.createStatement();
            String query = "select * from reponse where id_reponse = "+id_reponse+";";
            ResultSet rs = statement.executeQuery(query);
            while (rs.next()) return rs.getInt("id_question");
        }
        catch (Exception e) {
            System.out.println(e);
        }
        return 0;
    }

    public int getIdQuiz(int id_question) {
        try {
            Statement statement = connection.createStatement();
            String query = "select * from composer where id_question="+id_question+";";
            ResultSet rs = statement.executeQuery(query);
            while (rs.next())  return rs.getInt("id_quiz");
        }
        catch (Exception e) {
            System.out.println(e);
        }
        return 0;
    }

    public String getQuizName(int id_quiz) {
        try {
            Statement statement = connection.createStatement();
            String query = "select * from quiz where id_quiz="+id_quiz+";";
            ResultSet rs = statement.executeQuery(query);
            while (rs.next()) return rs.getString("nom_quiz");
        }
        catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public String getUserName(int id_user) {
        try {
            Statement statement = connection.createStatement();
            String query = "select * from user where id_user="+id_user+";";
            ResultSet rs = statement.executeQuery(query);
            while (rs.next()) return rs.getString("user_name");
        }
        catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public static void  remove(ArrayList<String[]> arrayList) {
        for  (int i = 0 ; i < arrayList.size()-1;i++) {
            for (int j = i+1 ; j < arrayList.size() ; j++) {
                if (Arrays.equals(arrayList.get(i),arrayList.get(j))){
                    arrayList.remove(i);
                }
            }
        }
    }

}