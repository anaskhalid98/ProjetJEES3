package Code;

import javax.servlet.http.HttpServletRequest;

public class SignInForm {

    public boolean signin(HttpServletRequest req) {

        Database db = new Database();

        String nom = req.getParameter("Nom_Client");
        String prenom = req.getParameter("Prenom_Client");
        String email = req.getParameter("Email_Client");
        String password = req.getParameter("Mot_Pass_CLient");
        String confirmPassword = req.getParameter("Confirmer_Mot_Pass_Client");
        String poste = req.getParameter("poste");

        if (!nom.isEmpty() && !prenom.isEmpty() && !email.isEmpty() && !password.isEmpty() && !confirmPassword.isEmpty() && !poste.isEmpty()) {
            if (password.equals(confirmPassword)) {
                db.insertUser(nom,prenom,email,password,poste);
                return true;
            }
            else return false;
        }
        return false;
    }

}
