class Rechteck
{
  private float x;
  private float y;
  private float breite;
  private float hoehe;
  
  public Rechteck(float x_, float y_)
  {
    x = x_;
    y = y_;
  }
  
  public void setBreite(float breite_)
  {
    breite = breite_;
  }
  
  public void setHoehe(float hoehe_)
  {
    hoehe = hoehe_;
  }
 
  public void setPosition(float x_, float y_)
  {
    x = x_;
    y = y_;
  }
  
  public void zeichnen()
  {
    noFill();
    stroke(255,0,0);
    rect(x,y,breite,hoehe);
  }
  
  public boolean schneide(Rechteck r2)
  {
    if (x > r2.x && x < r2.x + r2.breite )
    {
      if (y > r2.y && y < r2.y + r2.hoehe)
      {
        return true;
      }
    }
    if (r2.x > x && r2.x < x + breite )
    {
      if (r2.y > y && r2.y < y + hoehe)
      {
        return true;
      }
    }
    return false; 
  }
  
}
