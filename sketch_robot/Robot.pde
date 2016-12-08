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
    
    run();
  }  
  
  // 更新処理(メソッド)
  void update() { 
    // 移動
    dir += rotSpeed;
    pos.x += vel * sin(dir);
    pos.z += vel * cos(dir);
    translate(pos.x, pos.y, pos.z);
    rotateY(dir);
    
    // 描画
    translate(0, -300, 0);
    
    box(100, 200, 50);

    pushMatrix();
    translate(0, -150, 0);
    box(50);
    popMatrix();

    lArm.update();
    rArm.update();
    lLeg.update();
    rLeg.update();
  }
  
  // 走る
  void run() {
    float speed = 0.03 * vel;
    float amp = 0.1 * vel;
    
    lArm.swSpeed = speed;
    lArm.swAmp = amp;
    lArm.child.swSpeed = speed;
    lArm.child.swAmp = amp;
    lArm.child.swOrg = amp;
    rArm.swSpeed = -speed;
    rArm.swAmp = amp;
    rArm.child.swSpeed = -speed;
    rArm.child.swAmp = amp;
    rArm.child.swOrg = amp;
    lLeg.swSpeed = -speed;
    lLeg.swAmp = amp;
    lLeg.child.swSpeed = -speed;
    lLeg.child.swAmp = amp;
    lLeg.child.swOrg = -amp;
    rLeg.swSpeed = speed;
    rLeg.swAmp = amp;
    rLeg.child.swSpeed = speed;
    rLeg.child.swAmp = amp;
    rLeg.child.swOrg = -amp;    
  }
}