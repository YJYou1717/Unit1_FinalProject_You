class turret2
{
  float xTPos;
  float yTPos;
  float XTV;
  float YTV;
  PShape t;
  color Tcol;

  turret2()
  {
    xTPos=25;
    yTPos=random(100, height-100);
    Tcol=color(255);
    XTV=7;
    YTV=7;
    t = new PShape();
    t = createShape();
    t.beginShape();
    t.fill(255, 90, 40);
    t.noStroke();
    t.vertex(-25, -25);
    t.vertex(-25, +25);
    t.vertex(+15, +25);
    t.vertex(+25, +15);
    t.vertex(+25, +8);
    t.vertex(+70, +8);
    t.vertex(+70, +3);
    t.vertex(+25, +3);
    t.vertex(+25, -3);
    t.vertex(+70, -3);
    t.vertex(+70, -8);
    t.vertex(+25, -8);
    t.vertex(+25, -15);
    t.vertex(+15, -25);
    t.endShape(CLOSE);
  }

  turret2(float Tx1, float Ty1)
  {
    xTPos=Tx1;
    yTPos=Ty1;
    Tcol=color(255);
    XTV=7;
    YTV=7;

    t = new PShape();
    t = createShape();
    t.beginShape();
    t.fill(255, 90, 40);
    t.noStroke();
    t.vertex(-25, -25);
    t.vertex(-25, +15);
    t.vertex(-15, +25);
    t.vertex(-8, +25);
    t.vertex(-8, +70);
    t.vertex(-3, +70);
    t.vertex(-3, +25);
    t.vertex(+3, +25);
    t.vertex(+3, +70);
    t.vertex(+8, +70);
    t.vertex(+8, +25);
    t.vertex(+15, +25);
    t.vertex(+25, +15);
    t.vertex(+25, -25);
    t.endShape(CLOSE);
  }

  void drawww()
  {
    shape(t, xTPos, yTPos);
  }

  void turretMove()
  {
    yTPos-=YTV;

    if (yTPos>height-100)
    {
      YTV*=-1;
    }

    if (yTPos<100)
    {
      YTV*=-1;
    }
  }
}