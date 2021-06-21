class Spielobjekt
{
   //Attribute
   protected float x;
   protected float y;   
   protected float vx;
   protected float vy;
   protected float breite;
   protected float hoehe; 
   
   protected boolean sichtbar;
   
   protected Rechteck rahmen;
   
  //Konstruktor
  public Spielobjekt(float x_, float y_)
  {
    x = x_;
    y = y_;
    vx = 0;
    vy = 0;
    rahmen = new Rechteck(x,y);
    sichtbar = true;
  }
   
  public float getX()
  {
    return x;
  }

  public float getY()
  {
    return y;
  }

  public float getBreite()
  {
    return breite;
  }

  public void setPosition(float x_, float y_)
  {
    x = x_;
    y = y_;
  }
  
  void setVy(float vy_)
  {
    vy = vy_;
  }
    void setVx(float vx_)
  {
    vx = vx_;
  }
  
  public Rechteck getRahmen()
  {
    return rahmen;
  }
  
  public boolean trifft(Spielobjekt o2)
  {
    if (sichtbar && o2.sichtbar && rahmen.schneide(o2.getRahmen()))
    {
      return true;
    }
    else
    {
      return false;
    }
  }
  
  void setSichtbar(boolean wert)
  {
    sichtbar = wert;
  }
}
