
Schiff schiff;
Kugel kugel;
Alien[] aliens;
int anzahlAliens;


void setup()
{
  size(800, 500);
  schiff = new Schiff(300, 450);
  kugel = new Kugel(schiff.getX()+schiff.getBreite()/2, schiff.getY());
  anzahlAliens = 8;
  aliens = new Alien[anzahlAliens];
  for (int i = 0; i < anzahlAliens; i++)
  {
    aliens[i] = new Alien(100 + 50*i, 100);
  }
}

// Gameloop
void draw()
{
  alleBewegen();  // Alle Spielfiguren müssen bewegt werden
  zeichnen(); // Alles neu Zeichnen!
  
  // Kollisionskontrolle
  for (int i = 0; i < anzahlAliens; i++)
  {
    if (kugel.trifft(aliens[i]))
    {
      aliens[i].setSichtbar(false);
      kugel.setSichtbar(false);
    }
  }
}

// Steuerung des Schiffs mit den Tasten
void keyPressed()
{
  if (keyCode == LEFT)
  {
    schiff.nachLinks();
  }
  if (keyCode == RIGHT)
  {
    schiff.nachRechts();
  }
  if (key == ' ')
  {
    kugel.setPosition(schiff.getX()+schiff.getBreite()/2-3, schiff.getY());
    kugel.setVy(-2);
    kugel.setSichtbar(true);
  }
}

// wird aufgerufen, wenn eine Taste losgelassen wurde
public void keyReleased()
{
  if (key != ' ')
  {
    schiff.stoppen();
  }
}

// ----------------------------------------------
// update
// ----------------------------------------------
public void alleBewegen()
{
  schiff.update();
  kugel.update();
  for (int i = 0; i < anzahlAliens; i++)
  {
    aliens[i].update();
  }
}

// ------------------------------------------------
// Zeichnet alles neu
// ------------------------------------------------
void zeichnen()
{
  background(0);
  schiff.zeichnen();
  kugel.zeichnen();
  for (int i = 0; i < anzahlAliens; i++)
  {
    aliens[i].zeichnen();
  }
}
