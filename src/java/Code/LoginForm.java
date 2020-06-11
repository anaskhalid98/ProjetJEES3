package Code;

import javax.servlet.http.HttpServletRequest;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class LoginForm {

    public String checkUser(HttpServletRequest req) {

        Database db = new Database();

        String email = req.getParameter("Email_Client");
        String password = req.getParameter("MDP_Client");

        String poste = db.fetchUser(email,password);
        return poste;
    }

    public int getIdUser(HttpServletRequest request) {
        String email = request.getParameter("Email_Client");
        String password = request.getParameter("MDP_Client");
        try {
            Database db = new Database();
            Connection connection = db.connection();
            Statement statement = connection.createStatement();
            String sqlQuery = "select * from user where user_email='"+email+"'and user_password='"+password+"';";
            ResultSet rs = statement.executeQuery(sqlQuery);
            while (rs.next()) {
                return rs.getInt("id_user");
            }
        }
        catch (Exception e) {
            System.out.println(e);
        }
        return 0;
    }

    public String getUserName(HttpServletRequest req) {
        int id_user = getIdUser(req);
        try {
            Database db = new Database();
            Connection connection = db.connection();
            Statement statement = connection.createStatement();
            String query = "select * from user where id_user="+id_user+";";
            ResultSet rs =  statement.executeQuery(query);
            while (rs.next()) return rs.getString("user_name") + " " + rs.getString("user_first_name");
        }
        catch (Exception e ){
            System.out.println(e);
        }
        return "";
    }

}
