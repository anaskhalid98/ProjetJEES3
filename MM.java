import java.io.*;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.StandardCharsets;

public class MM {
    public static void main(String args[]){
        HttpURLConnection conn = null;
        DataOutputStream os = null;
        String id_quest = "6" ;
        String rep1 = "1";
        String rep2 = "0";
        String rep3 = "0";
        String rep4 = "1";
        String rep5 = "1";
        String rep6 = "1";
        String rep7 = "0";
        String rep8 = "1";
        String rep9 = "0";
        String rep10 = "1";
        try{
            URL url = new URL("http://127.0.0.1:5000/predict/"); //important to add the trailing slash after add
            String[] inputData = {"{\"id_quest\":"+id_quest+", \"rep1\":"+rep1+",\"rep2\":"+rep2+", \"rep3\":"+rep3+",\"rep4\":"+rep4+",\"rep5\":"+rep5+",\"rep6\":"+rep6+",\"rep7\":"+rep7+", \"rep8\":"+rep8+",\"rep9\":"+rep9+",\"rep10\":"+rep10+", \"text\":\"random text\"}"};
            for(String input: inputData){
                byte[] postData = input.getBytes(StandardCharsets.UTF_8);
                conn = (HttpURLConnection) url.openConnection();
                conn.setDoOutput(true);
                conn.setRequestMethod("POST");
                conn.setRequestProperty("Content-Type", "application/json");
                conn.setRequestProperty( "charset", "utf-8");
                conn.setRequestProperty("Content-Length", Integer.toString(input.length()));
                os = new DataOutputStream(conn.getOutputStream());
                os.write(postData);
                os.flush();

                if (conn.getResponseCode() != 200) {
                    throw new RuntimeException("Failed : HTTP error code : "
                            + conn.getResponseCode());
                }

                BufferedReader br = new BufferedReader(new InputStreamReader(
                        (conn.getInputStream())));

                String output;
                System.out.println("Output from Server .... \n");
                while ((output = br.readLine()) != null) {
                    System.out.println(output);
                }
                conn.disconnect();
            }
        } catch (MalformedURLException ex) {
            ex.printStackTrace();
        }catch (IOException ex){
            ex.printStackTrace();
        }finally
        {
            if(conn != null)
            {
                conn.disconnect();
            }
        }
    }
}