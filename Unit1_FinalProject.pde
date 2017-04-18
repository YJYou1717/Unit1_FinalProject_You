turrets TopTurret;
turret2 LeftTurret;
turret3 RightTurret;
turret4 BottomTurret;
Ship YourShip;
bullet bullet1;
bullet bullet2;
bullet bullet3;
bullet bullet4;
bullet bullet5;

float firedTime;
float reloadingTime;

void setup()
{
  size(1000, 900);

  YourShip = new Ship(width/2, height-300, 255, 85, 238);
  TopTurret = new turrets();
  LeftTurret = new turret2();
  RightTurret = new turret3(width-25, random(100, height-100));
  BottomTurret = new turret4();
  bullet1 = new bullet();
  bullet2 = new bullet(TopTurret.xTPos, TopTurret.yTPos, 0, 10);
  bullet3 = new bullet(LeftTurret.xTPos, LeftTurret.yTPos, 10, 0);
  bullet4 = new bullet(RightTurret.xPosT, RightTurret.yPosT, -10, 0);
  bullet5 = new bullet(BottomTurret.xTPos, BottomTurret.yTPos, 0, -10);
}

void draw()
{
  background(#4B5BFF);
  YourShip.Draw();
  YourShip.Move1();

  TopTurret.draww();
  TopTurret.turretMove();

  LeftTurret.drawww();
  LeftTurret.turretMove();

  RightTurret.draww();
  RightTurret.turretMove();

  BottomTurret.draww();
  BottomTurret.turretMove();

  bullet1.render();
  bullet1.shoot();

  bullet2.render();
  bullet2.TurretShoot1();

  bullet3.render();
  bullet3.TurretShoot2();

  bullet4.render();
  bullet4.TurretShoot3();

  bullet5.render();
  bullet5.TurretShoot4();

  SFire();
  TTurretFire();
  LTurretFire();
  RTurretFire();
  BTurretFire();
  wall();
}

void SFire()
{
  if (key==' ')
  {
    if (millis()-bullet1.firedTime > bullet1.reloadingTime)
    {
      bullet1.xBPos=YourShip.x1;
      bullet1.yBPos=YourShip.y1;
      bullet1.fire=true;

      bullet1.firedTime=millis();
    }
  }
}

void TTurretFire()
{
  if (millis()-bullet2.firedTime2 > bullet2.reloadingTime2)
  {
    bullet2.xBPos=TopTurret.xTPos;
    bullet2.yBPos=TopTurret.yTPos;
    bullet2.firedTime2=millis();
    bullet2.fire2=true;
  }
}

void LTurretFire()
{
  if (millis()-bullet3.firedTime2 > bullet3.reloadingTime2)
  {
    bullet3.xBPos=LeftTurret.xTPos;
    bullet3.yBPos=LeftTurret.yTPos;
    bullet3.firedTime2=millis();
    bullet3.fire3=true;
  }
}

void RTurretFire()
{
  if (millis()-bullet4.firedTime2 > bullet4.reloadingTime2)
  {
    bullet4.xBPos=RightTurret.xPosT;
    bullet4.yBPos=RightTurret.yPosT;
    bullet4.firedTime2=millis();
    bullet4.fire4=true;
  }
}

void BTurretFire()
{
  if (millis()-bullet5.firedTime2 > bullet5.reloadingTime2)
  {
    bullet5.xBPos=BottomTurret.xTPos;
    bullet5.yBPos=BottomTurret.yTPos;
    bullet5.firedTime2=millis();
    bullet5.fire5=true;
  }
}



void wall()
{
  fill(0);
  rect(100, 100, 7, 700, 7);
  rect(100, 100, 800, 7, 7);
  rect(100, height-100, 800, 7, 7);
  rect(width-105, 100, 7, 705, 7);
}