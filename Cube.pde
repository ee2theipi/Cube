float inc = 0.01;
sscube b;
PVector[] vectors = new PVector[10];
void setup() {
    size(600,600,P3D); 
    b = new sscube();    
}
  
  void draw(){
    translate(width/2,height/2);
    //inc +=0.001;
    rotateX(inc);
    rotateY(inc);
    background(155); 
    vectors[0] = new PVector(-76, -76, 76);
    vectors[1] = new PVector(0, -76, 76);
    vectors[2] = new PVector(76, -76, 76);
    vectors[3] = new PVector(-76, 0, 76);
    vectors[4] = new PVector(0, 0, 76);
    vectors[5] = new PVector(76, 0, 76);
    vectors[6] = new PVector(-76, 76, 76);
    vectors[7] = new PVector(0, 75, 76);
    vectors[8] = new PVector(76, 76, 76);
    //vectors[9] = new PVector(-75, 75, 70);
    //for(int i = 0; i < 9; i++){
    //line(0,0,0,vectors[i].x,vectors[i].y,vectors[i].z);
    //b.sface(vectors[i]);
    //}
    b.ccube1(vectors[0]);
    b.ccube2(vectors[2]);
  }
