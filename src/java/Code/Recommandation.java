package Code;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class Recommandation {

    public ArrayList<String> getRecommandation(int id_user) {
        ArrayList<String> recommandation = new ArrayList<>();
        try {
            Database db = new Database();
            Connection connection = db.connection();
            Statement statement = connection.createStatement();
            String query = "select * from recommandation where id_user ="+id_user+";";
            ResultSet rs = statement.executeQuery(query);
            while (rs.next()) {
                recommandation.add(rs.getString("contenu_recommandation"));
            }
            return recommandation;
        }
        catch (Exception e) {
            System.out.println(e);
        }
        return recommandation;
    }

}
