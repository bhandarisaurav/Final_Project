package GUI;

import javax.swing.*;
import java.awt.*;

/**
 * Created by saura on 2/16/2017.
 */
public class GUI {


    public static class Main extends JComponent {
        String[] dfonts;
        Font[] font;
        static final int IN = 15;
        public Main() {
            dfonts = GraphicsEnvironment.getLocalGraphicsEnvironment().getAvailableFontFamilyNames();
            font = new Font[dfonts.length];
        }
        public void paintComponent(Graphics g) {
            for (int j = 0; j < dfonts.length; j += 1) {
                if (font[j] == null) {
                    font[j] = new Font(dfonts[j], Font.PLAIN, 16);
                }
                g.setFont(font[j]);
                int p = 15;
                int q = 15+ (IN * j);
                g.drawString(dfonts[j],p,q);
            }
        }
        public static void main(String[] args) {
            JFrame frame = new JFrame("Different Fonts");
            frame.getContentPane().add(new JScrollPane(new Main()));
            frame.setSize(350, 650);
            frame.setVisible(true);
        }
    }
}
