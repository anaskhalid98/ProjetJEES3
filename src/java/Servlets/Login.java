package Servlets;

import Code.LoginForm;
import Code.Questionnaire;
import Code.Reponse;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class Login extends HttpServlet {
    private final String VUE = "/WEB-INF/JspFiles";
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LoginForm lf = new LoginForm();

        String email = req.getParameter("Email_Client");
        String password = req.getParameter("MDP_Client");
        if(email.equals("admin") && password.equals("admin")) {
            System.out.println(email);
            System.out.println(password);
            Questionnaire questionnaire = new Questionnaire();
            req.setAttribute("questionnaire",questionnaire.getQuestionnaire());
            this.getServletContext().getRequestDispatcher(VUE + "/Admin.jsp").forward(req, resp);
        }
        else {
            try {
                if (lf.checkUser(req).equals("employee")) {
                    System.out.println("employee");
                    HttpSession session = req.getSession();
                    session.setAttribute("id_user",lf.getIdUser(req));
                    session.setAttribute("user_name",lf.getUserName(req));
                    Questionnaire questionnaire = new Questionnaire();
                    session.setAttribute("questionnaire",questionnaire.getQuestionnaire());
                    req.setAttribute("questionnaire",questionnaire.getQuestionnaire());
                    System.out.println("go to home.jsp");
                    this.getServletContext().getRequestDispatcher(VUE+"/home.jsp").forward(req,resp);
                }
                else if (lf.checkUser(req).equals("chefprojet")){
                    System.out.println("chef projet");
                    HttpSession session = req.getSession();
                    Reponse reponse = new Reponse();
                    req.setAttribute("questionnaires",reponse.getQuestionnairesRepondus());
                    this.getServletContext().getRequestDispatcher(VUE+"/ChefProjet.jsp").forward(req,resp);
                }
            }
            catch (NullPointerException e){
                System.out.println(e);
                this.getServletContext().getRequestDispatcher("/index.jsp").forward(req,resp);
            }
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher(VUE+"/home.jsp").forward(req,resp);
    }
}
