package Servlets;

import Code.Database;
import Code.Quiz;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet (value = "/SetRecommandationServlet")
public class SetRecommandationServlet extends HttpServlet {

    private final String VUE = "/WEB-INF/JspFiles";
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Recommandation = request.getParameter("Recommandation");
        String user_name= request.getParameter("user_name");
        int id_user= 0;

        try {
            Database database =new Database();
            database.connection();
            id_user=database.getIDUser(user_name);
            System.out.println(id_user);
            database.setRecommandation(Recommandation,id_user);
        }
        catch (NullPointerException e){
            System.out.println(e);
        }
        this.getServletContext().getRequestDispatcher(VUE+"/PoserRecommandationChefProjet.jsp").forward(request, response);
    }
}