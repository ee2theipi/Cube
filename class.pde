class sscube {

//float a, b, c, d;

//this is an constructur (where an object is born)(its name must matchclass name)
//sscube(a, b, c, d){
//    rect(a, b, c, d); 
//}
//void sface(PVector vector){
//   rect(vector.x - 20, vector.y - 20, 50, 50);
    
//}
//void faceL(PVector vec){
//    pushMatrix();
//    translate(-97,0);
//    rotateY(PI/2);
//   rect(vec.x - 20, vec.y - 20, 50, 50);
    //line(-97, -100, -97, 100);
//    popMatrix();
//}

void ccube1(PVector vec){
    pushMatrix();
    translate(0, 0, 76);
    rect(vec.x,vec.y,50,50);
    popMatrix();
    pushMatrix();
    translate(-76, -76, 76);
    rotateY(PI/2);
    rect(0,0,50,50);
    popMatrix();
    pushMatrix();
    translate(-76, -76, 76);
    rotateX(3*PI/2);
    rect(0,0,50,50);
    popMatrix();
}

void ccube2(PVector vec){
    pushMatrix();
    translate(0, 0, 76);
    //scale(0, 0, 0);
    rect(vec.x - 50, vec.y , 50, 50);
    popMatrix();
    pushMatrix();
    translate(76, -76, 76);
    rotateY(PI/2);
    rect(0,0,50,50);
    popMatrix();
    pushMatrix();
    translate(76, -76, 76);
    rotateX(3*PI/2);
    rect(-50,0,50,50);
    popMatrix();
}


}