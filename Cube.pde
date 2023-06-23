//float inc = 0.01;
sscube b;
void setup() {
    size(600,600,P3D); 
    b = new sscube();    
}
  
  void draw(){
  background(155); 
  PVector[] vectors = new PVector[2];
   vectors[0] = new PVector(100, 100);
   vectors[1] = new PVector(0, 100);
   line(0,0,0,vectors[0].x,vectors[0].y,vectors[0].z);
   line(0,0,0,vectors[1].x,vectors[1].y,vectors[1].z);
   b.sface(vectors[0]);
   b.sface(vectors[1]);
  }
  
  //inc +=0.01;
  //rotateX(inc);
  //rotateY(inc);
    //background(200);
    //translate(width/2,height/2);
    //PVector[] vectors = new PVector[54];
    //vectors[0] = new PVector(100, 0, 100);
    //vectors[1] = new PVector(0, 0, 100);
    //vectors[2] = new PVector(-100, 0, 100);
    //vectors[3] = new PVector(100, 100, 100);
    //vectors[4] = new PVector(0, 100, 100);
    //vectors[5] = new PVector(-100, 100, 100);

    //line(500,0,-500,0);
    //line(0,500,0,-500);
    
    //line(0,0,0,vectors[0].x,vectors[0].y,vectors[0].z);
    //line(0,0,0,vectors[1].x,vectors[1].y,vectors[1].z);
    //line(0,0,0,vectors[2].x,vectors[2].y,vectors[2].z);
    //line(0,0,0,vectors[3].x,vectors[3].y,vectors[3].z);
    //line(0,0,0,vectors[4].x,vectors[4].y,vectors[4].z);
    //line(0,0,0,vectors[5].x,vectors[5].y,vectors[5].z);
    
    //b.display();
    //b.leftface();
    //rect(0,0,50,50);