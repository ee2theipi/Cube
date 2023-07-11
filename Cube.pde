float inc = 0.05;
sscube b;
PVector[] vectors = new PVector[25];
void setup() {
    size(600,600,P3D); 
    b = new sscube();    
}
  
  void draw(){
    translate(width/2,height/2);
    inc +=0.009;
    //rotateY(degrees(mouseX)/8000);
    //rotateX(degrees(mouseY)/8000);
    rotateY(inc);
    rotateX(inc);
    background(155); 
    vectors[0] = new PVector(-76, -76, 76);
    vectors[1] = new PVector(-76, 76, -76);
    vectors[2] = new PVector(76, -76, 76);
    vectors[3] = new PVector(-76, 76, 76);
    vectors[4] = new PVector(76, 76, 76);
    vectors[5] = new PVector(76, 0, 76);
    vectors[6] = new PVector(76, -76, -76);
    vectors[7] = new PVector(76, 76, -76);
    vectors[8] = new PVector(-76, -76, -76);

    vectors[10] = new PVector(-76, 0, 76);
    vectors[11] = new PVector(76, 0, 76);
    vectors[12] = new PVector(-76, 0, -76);
    vectors[13] = new PVector(76, 0, -76);
    vectors[14] = new PVector(0, -76, -76);
    vectors[15] = new PVector(0, 76, -76);
    vectors[16] = new PVector(0, -76, 76);
    vectors[17] = new PVector(0, 76, 76);
    vectors[18] = new PVector(-76, -76, 0);
    vectors[19] = new PVector(76, -76, 0);
    vectors[20] = new PVector(-76, 76, 0);
    vectors[21] = new PVector(76, 76, 0);
    //for(int i = 0; i < 9; i++){
    //line(0,0,0,vectors[i].x,vectors[i].y,vectors[i].z);
    //b.sface(vectors[i]);
    //}
    b.ccube1(vectors[0]);
    b.ccube2(vectors[2]);
    b.ccube3(vectors[8]);
    b.ccube4(vectors[6]);
    b.ccube5(vectors[3]);
    b.ccube6(vectors[1]);
    b.ccube7(vectors[7]);
    b.ccube8(vectors[4]);
    b.mcube1(vectors[10]);
    b.mcube2(vectors[11]);
    b.mcube3(vectors[12]);
    b.mcube4(vectors[13]);
    b.mcube5(vectors[14]);
    b.mcube6(vectors[15]);
    b.mcube7(vectors[16]);
    b.mcube8(vectors[17]);
    b.mcube9(vectors[18]);
    b.mcube10(vectors[19]);
    b.mcube11(vectors[20]);
    b.mcube12(vectors[21]);

  }