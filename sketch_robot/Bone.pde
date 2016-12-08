class Bone {
  // パラメータ変数(フィールド)
  PVector pos;
  PVector dim;
  PVector rot;
  Bone child;

  float swSpeed;
  float swAmp;
  float swOrg;
  float swPhase;
   
  // 初期化の処理(コンストラクタ)
  Bone (float px, float py, float pz, float dx, float dy, float dz) {
    pos = new PVector(px, py, pz);
    dim = new PVector(dx, dy, dz);
    rot = new PVector(0, 0, 0);
  }
  
  // 更新処理(メソッド)
  void update() {
    
    swing();
    
    pushMatrix();
    translate(pos.x, pos.y, pos.z);
    rotateX(rot.x + swOrg);
    rotateY(rot.y);
    rotateZ(rot.z);
    translate(0, dim.y/2, 0);
    box(dim.x, dim.y, dim.z);
    
    if (child != null) {
      translate(0, dim.y/2, 0);
      child.update();
    }
    
    popMatrix();
  }
  
  // 振る
  void swing() { 
    rot.x = swAmp * sin(swPhase);
    swPhase += swSpeed;
  }
}