class Robot {
  // パラメータ変数(フィールド)
  Bone lArm;
  Bone rArm;
  Bone lLeg;
  Bone rLeg;

  PVector pos;
  float vel;
  float dir;
  float rotSpeed;
  
  // 初期化の処理(コンストラクタ)
  Robot() {
    lArm = new Bone( 70,-100, 0, 40, 100, 40);
    lArm.child = new Bone( 0, 0, 0, 40, 100, 40);
    rArm = new Bone(-70,-100, 0, 40, 100, 40);
    rArm.child = new Bone( 0, 0, 0, 40, 100, 40);
    lLeg = new Bone( 30, 100, 0, 40, 100, 40);
    lLeg.child = new Bone( 0, 0, 0, 40, 100, 40);
    rLeg = new Bone(-30, 100, 0, 40, 100, 40);
    rLeg.child = new Bone( 0, 0, 0, 40, 100, 40);

    pos = new PVector(0, 0, 0);
    vel = 10.0;
    dir = 0;
    rotSpeed = 0.02;
  }  
}