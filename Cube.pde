//float inc = 0.05;
float x = 0;
int a = 76;
sscube b;
PVector[] vectors = new PVector[25];
void setup() {
    size(500,500,P3D); 

}
  
  void draw(){
    translate(width/2,height/2);
    rotateY(-degrees(mouseX)/4000);
    rotateX(-degrees(mouseY)/4000);
    background(155);
    b = new sscube();  

    vectors[0] = new PVector(-a, -a, a);
    vectors[1] = new PVector(-a, a, -a);
    vectors[2] = new PVector(a, -a, a);
    vectors[3] = new PVector(-a, a, a);
    vectors[4] = new PVector(a, a, a);
    vectors[5] = new PVector(a, 0, a);
    vectors[6] = new PVector(a, -a, -a);
    vectors[7] = new PVector(a, a, -a);
    vectors[8] = new PVector(-a, -a, -a);

    vectors[10] = new PVector(-a, 0, a);
    vectors[11] = new PVector(a, 0, a);
    vectors[12] = new PVector(-a, 0, -a);
    vectors[13] = new PVector(a, 0, -a);
    vectors[14] = new PVector(0, -a, -a);
    vectors[15] = new PVector(0, a, -a);
    vectors[16] = new PVector(0, -a, a);
    vectors[17] = new PVector(0, a, a);
    vectors[18] = new PVector(-a, -a, 0);
    vectors[19] = new PVector(a, -a, 0);
    vectors[20] = new PVector(-a, a, 0);
    vectors[21] = new PVector(a, a, 0);
    drawcube(); 
    //inc +=0.009;
    //rotateY(inc);
    //rotateX(inc);
    //background(155); 
    //for(int i = 0; i < 9; i++){
    //line(0,0,0,vectors[i].x,vectors[i].y,vectors[i].z);
    //b.sface(vectors[i]);
    //}
  }
