class turret3
{
  float xPosT;
  float yPosT;

  float x;
  float y;
  float XTV;
  float YTV;
  PShape t;
  color Tcol;

  turret3()
  {
    xPosT=width-25;
    yPosT=random(100, height-100);
    Tcol=color(255);
    XTV=7;
    YTV=7;
    t = new PShape();
    t = createShape();
    t.beginShape();
    t.fill(255, 90, 40);
    t.noStroke();
    t.vertex(+25, -25);
    t.vertex(+25, +25);
    t.vertex(-15, +25);
    t.vertex(-25, +15);
    t.vertex(-25, +8);
    t.vertex(-70, +8);
    t.vertex(-70, +3);
    t.vertex(-25, +3);
    t.vertex(-25, -3);
    t.vertex(-70, -3);
    t.vertex(-70, -8);
    t.vertex(-25, -8);
    t.vertex(-25, -15);
    t.vertex(-15, -25);
    t.endShape(CLOSE);
  }

  turret3(float x, float y)
  {
    xPosT =x;
    yPosT =y;
    Tcol=color(255);
    XTV=7;
    YTV=7;
    t = new PShape();
    t = createShape();
    t.beginShape();
    t.fill(255, 90, 40);
    t.noStroke();
    t.vertex(+25, -25);
    t.vertex(+25, +25);
    t.vertex(-15, +25);
    t.vertex(-25, +15);
    t.vertex(-25, +8);
    t.vertex(-70, +8);
    t.vertex(-70, +3);
    t.vertex(-25, +3);
    t.vertex(-25, -3);
    t.vertex(-70, -3);
    t.vertex(-70, -8);
    t.vertex(-25, -8);
    t.vertex(-25, -15);
    t.vertex(-15, -25);
    t.endShape(CLOSE);
  }

  void draww()
  {
    shape(t, xPosT, yPosT);
  }

  void turretMove()
  {
    yPosT+=YTV;

    if (yPosT>height-100)
    {
      YTV*=-1;
    }

    if (yPosT<100)
    {
      YTV*=-1;
    }
  }
}