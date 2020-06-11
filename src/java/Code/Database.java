package Code;

import java.sql.*;
import java.util.ArrayList;


public class Database {

    private final String database  ="jee";
    private final String URL = "jdbc:mysql://localhost:3306/"+database;
    private final String USER = "root";
    private final String PASSWORD = "root";


    public Connection connection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(URL,USER,PASSWORD);
            return connection;
        }
        catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public String fetchUser(String email,String password) {

        try {
            Connection connection = connection();
            Statement statement = connection.createStatement();
            String sqlQuery = "select * from user where user_email='"+email+"'and user_password='"+password+"';";
            ResultSet rs = statement.executeQuery(sqlQuery);
            int id_poste;
            while (rs.next()) {
                id_poste = rs.getInt("id_poste");
                String poste = getPoste(id_poste);
                return poste;
            }
            return null;
        }
        catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
    public boolean insertUser(String nom,String prenom,String email,String password,String poste) {
        try {
            Connection connection = connection();
            Statement statement = connection.createStatement();
            int id_poste = getPosteId(poste);
            String sqlQuery = "insert into user (user_name,user_first_name,user_password,user_email,id_poste) values ('"+nom+"','"+prenom+"" +
                    "','"+password+"','"+email+"',"+id_poste+");";
            statement.executeUpdate(sqlQuery);
        }
        catch (Exception e) {
            System.out.println(e);
        }
        return false;
    }
    public int getPosteId(String nom_poste) {
        try {
            Connection connection = connection();
            Statement statement = connection.createStatement();
            String sqlQuery = "select * from poste where nom_poste='"+nom_poste+"';";
            ResultSet rs = statement.executeQuery(sqlQuery);
            while (rs.next()) {
                return rs.getInt("id_poste");
            }
        }
        catch (Exception e){
            System.out.println(e);
        }
        return 0;
    }

    public String getPoste(int id_poste) {
        try {
            Connection connection = connection();
            Statement statement = connection.createStatement();
            String sqlQuery = "select * from poste where id_poste="+id_poste+";";
            ResultSet rs = statement.executeQuery(sqlQuery);
            while (rs.next()) {
                return rs.getString("nom_poste");
            }
        }
        catch (Exception e){
            System.out.println(e);
        }
        return null;
    }


    public void setQuestion(String nom_question){
        try {
            Connection connection = connection();
            String sqlQuery="INSERT INTO question (nom_question) values (?)";
            PreparedStatement preparedStatement=connection.prepareStatement(sqlQuery);
            preparedStatement.setString(1, nom_question);

            int x = preparedStatement.executeUpdate();
            if (x != 0) {
                System.out.println("Insert of question is successful");
            } else {
                System.out.println("Insert of question -_______-");
            }

            } catch (SQLException ex) {
            ex.printStackTrace();


        }
        catch (Exception e){
            System.out.println(e);
        }
    }
    public void setQuiz(String quiz_title){
        try {
            Connection connection = connection();
            String sql_query="INSERT INTO quiz (nom_quiz) values (?)";
            PreparedStatement preparedStatement=connection.prepareStatement(sql_query);
            preparedStatement.setString(1,quiz_title);

            int x = preparedStatement.executeUpdate();
            if (x != 0) {
                System.out.println("Insert of quiz is successful");
            } else {
                System.out.println("Insert of quiz: -_______-");
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        catch (Exception e){
            System.out.println(e);
        }
    }
    public int getIDQuiz(String quiz_title){
        int id_quiz = 0;
        try {
            Connection connection = connection();
            String sql_query = "SELECT id_quiz FROM quiz where nom_quiz=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql_query);
            preparedStatement.setString(1,quiz_title);

            ResultSet result_query = preparedStatement.executeQuery();
            while (result_query.next()) {
                id_quiz = result_query.getInt("id_quiz");
            }
        }
        catch (Exception e) {
            System.out.println(e);
        }
        return id_quiz;
    }
    public int getIDQuestion(String question){
        int id_question=0;
        try {
            Connection connection = connection();
            String sql_query = "SELECT id_question FROM question where nom_question=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql_query);
            preparedStatement.setString(1,question);
            ResultSet result_query = preparedStatement.executeQuery();
            while (result_query.next()) {
                id_question = result_query.getInt("id_question");
            }
        }
        catch (Exception e) {
            System.out.println(e);
        }

        return id_question;
    }
    public void setComposerQuestionQuiz(int id_quiz,int id_question){
        try {
            Connection connection = connection();
            String sql_query="INSERT INTO composer (id_question, id_quiz) values (?,?)";
            PreparedStatement preparedStatement=connection.prepareStatement(sql_query);
            preparedStatement.setInt(1,id_question);
            preparedStatement.setInt(2,id_quiz);

            int x = preparedStatement.executeUpdate();
            if (x != 0) {
                System.out.println("Insert of composer is successful");
            } else {
                System.out.println("Insert of composer: -_______-");
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        catch (Exception e){ System.out.println(e);
        }
    }
    public void setQuestionnaireCSV(String URI){
        try {
            Connection connection = connection();
            String sql_query="load DATA INFILE ? " +
                    "    INTO TABLE question" +
                    "    FIELDS TERMINATED BY '*'" +
                    "    ENCLOSED BY '\"'" +
                    "    LINES TERMINATED BY '\n'" +
                    "    (@col1)" +
                    "    SET question.nom_question=@col1";
            PreparedStatement preparedStatement=connection.prepareStatement(sql_query);
            preparedStatement.setString(1,URI);

            int x = preparedStatement.executeUpdate();
            if (x != 0) {
                System.out.println("Insert of CSV is successful");
            } else {
                System.out.println("Insert of CSV: -_______-");
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        catch (Exception e){
            System.out.println(e);
        }
    }
    public ArrayList<Integer> getLast10IDQuestion(){
        ArrayList<Integer> last_10_idquestion=new ArrayList<>();
        try {
            Connection connection = connection();
            String sql_query = "select id_question from question order by id_question desc limit 10;";
            PreparedStatement preparedStatement = connection.prepareStatement(sql_query);

            ResultSet result_query = preparedStatement.executeQuery();
            while (result_query.next()) {
               last_10_idquestion.add(result_query.getInt("id_question"));
            }
        }
        catch (Exception e) {
            System.out.println(e);
        }
        return last_10_idquestion;

    }

    public Reponse getReponse(int id_question){
        Reponse reponses = new Reponse();
        String reponse =null;
        String reponse_question = null;
        try {
            Connection connection = connection();
            String sql_query = "select question.nom_question,reponse.choix_reponse " +
                    "from jee.question,jee.reponse " +
                    "where reponse.id_question=question.id_question  and reponse.id_question=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql_query);
            preparedStatement.setInt(1,id_question);
            ResultSet result_query = preparedStatement.executeQuery();
            while (result_query.next()) {
                reponse_question=result_query.getString("nom_question");
                reponse=result_query.getString("reponse.choix_reponse");
            }
        }
        catch (Exception e) {
            System.out.println(e);
        }
        reponses.setReponse(reponse);
        reponses.setQuestion_reponse(reponse_question);

        return reponses;
    }
    public  ArrayList<Integer> getIDsQuestionOfQuiz(int id_quiz){
        ArrayList<Integer> id_questions=new ArrayList<>();
        try {
            Connection connection = connection();
            String sql_query = "select composer.id_question FROM jee.composer where id_quiz=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql_query);
            preparedStatement.setInt(1,id_quiz);
            ResultSet result_query = preparedStatement.executeQuery();
            while (result_query.next()) {

                id_questions.add(result_query.getInt("id_question"));

            }
        }
        catch (Exception e) {
            System.out.println(e);
        }

        return id_questions;
    }

    public void setRecommandation(String recommandation, int id_employe){
        try {
            Connection connection = connection();
            String sql_query="INSERT INTO recommandation (contenu_recommandation, id_user) values ('"+recommandation+"','"+id_employe+"');";
            Statement statement = connection.createStatement();
            statement.executeUpdate(sql_query);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        catch (Exception e){
            System.out.println(e);
        }
    }
    public int getIDUser(String user_name){
        int id_user=0;
        try {
            Connection connection = connection();
            String sql_query = "SELECT id_user FROM user where user_name=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql_query);
            preparedStatement.setString(1,user_name);
            ResultSet result_query = preparedStatement.executeQuery();
            while (result_query.next()) {
                id_user = result_query.getInt("id_user");
            }
        }
        catch (Exception e) {
            System.out.println(e);
        }

        return id_user;
    }


}
