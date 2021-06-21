public class Schiff extends Spielobjekt
{
  //Attribute
  PImage img;

  //Konstruktor
  public Schiff(float x_, float y_)
  {
    super(x_,y_);
    breite = 48;
    hoehe = 48;

    img = loadImage("schiff.png");
    rahmen.setBreite(breite);
    rahmen.setHoehe(hoehe);
  }

  //Methoden

  

  public void nachRechts()
  {
    vx = 3;
  }

  public void nachLinks()
  {
    vx = -3;
  }

  public void update()
  {
    x = x + vx;
    rahmen.setPosition(x,y);
  }

  public void stoppen()
  {
    vx = 0;
  }

  void zeichnen()
  {
    image(img, x, y, breite, hoehe);
    rahmen.zeichnen();
  }
}
