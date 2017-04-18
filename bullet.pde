class bullet
{
  float xBPos;
  float yBPos;
  float size;
  PShape b;
  boolean fire; 
  boolean fire2;
  boolean fire3;
  boolean fire4;
  boolean fire5;
  float firedTime;
  float reloadingTime;
  float firedTime2;
  float reloadingTime2;
  float xBV;
  float yBV;

  bullet()
  {
    xBPos=YourShip.x1;
    yBPos=YourShip.y1;
    reloadingTime=2000;
    firedTime=0;
    reloadingTime2=2000;
    firedTime2=0;
    b = new PShape();
    b = createShape();
    b.beginShape();
    b.fill(240, 240, 40);
    b.noStroke();
    b.vertex(-5, -3);
    b.vertex(-5, +5);
    b.vertex(+5, +5);
    b.vertex(+5, -3);
    b.vertex(0, -8);
    b.endShape(CLOSE);
    fire=false;
    fire2=false;
  }

  bullet(float xBP, float yBP)
  {
    xBPos=xBP;
    yBPos=yBP;
    reloadingTime=2000;
    firedTime=0;
    b = new PShape();
    b = createShape();
    b.beginShape();
    b.fill(240, 240, 40);
    b.noStroke();
    b.vertex(-5, -5);
    b.vertex(-5, +5);
    b.vertex(+5, +5);
    b.vertex(+5, -5);
    b.vertex(0, -8);
    b.endShape(CLOSE);
    fire=false;
  }

  bullet(float xBP, float yBP, float _xVB, float _yVB)
  {
    xBPos=xBP;
    yBPos=yBP;
    xBV=_xVB;
    yBV=_yVB;
    reloadingTime2=2000;
    firedTime2=0;
    b = new PShape();
    b = createShape();
    b.beginShape();
    b.fill(240, 240, 40);
    b.noStroke();
    b.vertex(-5, -5);
    b.vertex(-5, +5);
    b.vertex(+5, +5);
    b.vertex(+5, -5);
    b.vertex(0, -8);
    b.endShape(CLOSE);
    fire2=false;
    fire3=false;
    fire4=false;
    fire5=false;
  }

  void render()
  {
    shape(b, xBPos, yBPos);
  }

  void shoot()
  {
    if (fire==true)
    {
      yBPos-=10;
    }
  }

  void TurretShoot1()
  {
    fire2=true;
    if (fire2==true)
    {
      yBPos+=yBV;
      xBPos+=xBV;

      if (yBPos>TopTurret.yTPos)
      {
        fire2=false;
      }
    }
  }

  void TurretShoot2()
  {
    fire3=true;
    if (fire3==true)
    {
      yBPos+=yBV;
      xBPos+=xBV;

      if (yBPos>LeftTurret.xTPos)
      {
        fire3=false;
      }
    }
  }
  void TurretShoot3()
  {
    fire4=true;
    if (fire4==true)
    {
      yBPos+=yBV;
      xBPos+=xBV;

      if (yBPos<RightTurret.yPosT)
      {
        fire4=false;
      }
    }
  }
  void TurretShoot4()
  {
    fire5=true;
    if (fire5==true)
    {
      yBPos+=yBV;
      xBPos+=xBV;

      if (yBPos<BottomTurret.yTPos)
      {
        fire5=false;
      }
    }
  }
}