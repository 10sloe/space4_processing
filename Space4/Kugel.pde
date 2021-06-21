public class Kugel extends Spielobjekt
{
  // Attribute


  // Konstruktor
  Kugel(float x_, float y_)
  {      
    super(x_,y_);       
    breite = 6;
    hoehe = 6;

    sichtbar = false;
    rahmen.setBreite(breite);
    rahmen.setHoehe(hoehe);
  }

  // Methoden
  void update()
  {
    y = y + vy;
    rahmen.setPosition(x,y);
  }

  void zeichnen()
  {
    if (sichtbar)
    {
      fill(255, 255, 0); 
      ellipseMode(CORNER);
      ellipse(x, y, breite, hoehe);
      rahmen.zeichnen();
    }
    
  }
}
