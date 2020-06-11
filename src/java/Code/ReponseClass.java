package Code;

public class ReponseClass {
    private String question_reponse;
    private int reponse;

    public ReponseClass(){

    }

    public String getQuestion_reponse(){
        return question_reponse;
    }
    public int getReponseClass(){
        return reponse;
    }

    public void setQuestion_reponse(String question_reponse){
        this.question_reponse=question_reponse;
    }

    public void setReponseClass(int reponse){
        this.reponse=reponse;
    }
}