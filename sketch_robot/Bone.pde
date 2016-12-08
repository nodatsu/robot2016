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
}