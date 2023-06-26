float inc = 0.01;

//sscube b;
void setup() {
    size(600,600,P3D); 
    //b = new sscube(200,200,50,50);    


}

void draw() {
  inc +=0.01;
  //rotateX(inc);
  //rotateY(inc);
  background(200);
    translate(width/2,height/2);
    PVector[] vectors = new PVector[54];
    vectors[0] = new PVector(100, 0, 100);
    vectors[1] = new PVector(0, 0, 100);
    vectors[2] = new PVector(-100, 0, 100);
    vectors[3] = new PVector(100, 100, 100);
    vectors[4] = new PVector(0, 100, 100);
    vectors[5] = new PVector(-100, 100, 100);


}
