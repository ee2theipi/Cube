float inc = 0.01;
sscube b;
PVector[] vectors = new PVector[10];

void setup() {
    size(600,600,P3D); 
    b = new sscube();    


}

void draw() {
  inc +=0.01;
  rotateX(inc);
  rotateY(inc);
  background(200);
    translate(width/2,height/2);
    vectors[0] = new PVector(-76, -76, 76);
    vectors[1] = new PVector(0, -76, 76);
    vectors[2] = new PVector(76, -76, 76);
    vectors[3] = new PVector(-76, 0, 76);
    vectors[4] = new PVector(0, 0, 76);
    vectors[5] = new PVector(76, 0, 76);
    vectors[6] = new PVector(-76, 76, 76);
    vectors[7] = new PVector(0, 75, 76);
    vectors[8] = new PVector(76, 76, 76);


}
