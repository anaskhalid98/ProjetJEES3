package Code;

import java.sql.Connection;
import java.util.ArrayList;

public class TestDB {
    public static void main(String[] args) {
        Database database=new Database();
        database.connection();
       LoginForm login_form=new LoginForm();
       Reponse reponse=new Reponse();
        System.out.println(reponse.getColorTrueFalse("false"));

    }

}
