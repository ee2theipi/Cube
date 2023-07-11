class sscube {

//float a, b, c, d;
//this is an constructur (where an object is born)(its name must matchclass name)
//sscube(a, b, c, d){
//    rect(a, b, c, d); 
//}

void ccube1(PVector vec){
    pushMatrix();
    translate(0, 0, 76);
    fill(255, 0, 0);
    rect(vec.x,vec.y,50,50);
    popMatrix();
    pushMatrix();
    translate(-76, -76, 76);
    rotateY(PI/2);
    fill(0, 255, 0);
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

void ccube3(PVector vec){
    pushMatrix();
    translate(0, 0, -76);
    //scale(0, 0, 0);
    rect(vec.x, vec.y , 50, 50);
    popMatrix();
    pushMatrix();
    translate(-76, -76, -76);
    rotateY(3*PI/2);
    rect(0,0,50,50);
    popMatrix();
    pushMatrix();
    translate(-76, -76, -76);
    rotateX(PI/2);
    rect(0,0,50,50);
    popMatrix();
}

void ccube4(PVector vec){
    pushMatrix();
    translate(0, 0, -76);
    //scale(0, 0, 0);
    rect(vec.x - 50, vec.y , 50, 50);
    popMatrix();
    pushMatrix();
    translate(76, -76, -76);
    rotateY(3*PI/2);
    rect(0,0,50,50);
    popMatrix();
    pushMatrix();
    translate(76, -76, -76);
    rotateX(PI/2);
    rect(-50,0,50,50);
    popMatrix();
}

void ccube5(PVector vec){
    pushMatrix();
    translate(0, 0, 76);
    //scale(0, 0, 0);
    rect(vec.x, vec.y - 50, 50, 50);
    popMatrix();
    pushMatrix();
    translate(-76, 76, 76);
    rotateY(PI/2);
    rect(0,-50,50,50);
    popMatrix();
    pushMatrix();
    translate(-76, 76, 76);
    rotateX(3*PI/2);
    rect(0,0,50,50);
    popMatrix();
}

void ccube6(PVector vec){
    pushMatrix();
    translate(0, 0, -76);
    //scale(0, 0, 0);
    rect(vec.x, vec.y - 50, 50, 50);
    popMatrix();
    pushMatrix();
    translate(-76, 76, -76);
    rotateY(3*PI/2);
    rect(0,-50,50,50);
    popMatrix();
    pushMatrix();
    translate(-76, 76, -76);
    rotateX(PI/2);
    rect(0,0,50,50);
    popMatrix();
}

void ccube7(PVector vec){
    pushMatrix();
    translate(0, 0, -76);
    //scale(0, 0, 0);
    rect(vec.x -50, vec.y - 50, 50, 50);
    popMatrix();
    pushMatrix();
    translate(76, 76, -76);
    rotateY(3*PI/2);
    rect(0,-50,50,50);
    popMatrix();
    pushMatrix();
    translate(76, 76, -76);
    rotateX(PI/2);
    rect(-50,0,50,50);
    popMatrix();
}

void ccube8(PVector vec){
    pushMatrix();
    translate(0, 0, 76);
    //scale(0, 0, 0);
    rect(vec.x -50, vec.y - 50, 50, 50);
    popMatrix();
    pushMatrix();
    translate(76, 76, 76);
    rotateY(PI/2);
    rect(0,-50,50,50);
    popMatrix();
    pushMatrix();
    translate(76, 76, 76);
    rotateX(3*PI/2);
    rect(-50,0,50,50);
    popMatrix();
}

void mcube1(PVector vect){
    pushMatrix();
    translate(0, 0, 76);
    rect(-76, vect.y - 25, 50, 50);
    popMatrix();
    pushMatrix();
    translate(-76, 0, 76);
    rotateY(PI/2);
    rect(0, vect.y - 25, 50, 50);
    popMatrix();
}

void mcube2(PVector vect){
    pushMatrix();
    translate(0, 0, 76);
    rect(76 - 50, vect.y - 25, 50, 50);
    popMatrix();
    pushMatrix();
    translate(76, 0, 76);
    rotateY(PI/2);
    rect(0, vect.y - 25, 50, 50);
    popMatrix();
}

void mcube3(PVector vect){
    pushMatrix();
    translate(0, 0, -76);
    rect(-76, vect.y - 25, 50, 50);
    popMatrix();
    pushMatrix();
    translate(-76, 0, -76);
    rotateY(3*PI/2);
    rect(0, vect.y - 25, 50, 50);
    popMatrix();
}

void mcube4(PVector vect){
    pushMatrix();
    translate(0, 0, -76);
    rect(76 - 50, vect.y - 25, 50, 50);
    popMatrix();
    pushMatrix();
    translate(76, 0, -76);
    rotateY(3*PI/2);
    rect(0, vect.y - 25, 50, 50);
    popMatrix();
}

void mcube5(PVector vect){
    pushMatrix();
    translate(0, 0, -76);
    rect(vect.x - 25, vect.y, 50, 50);
    popMatrix();
    pushMatrix();
    translate(0, -76, -76);
    rotateX(PI/2);
    rect(vect.x - 25, 0, 50, 50);
    popMatrix();
}

void mcube6(PVector vect){
    pushMatrix();
    translate(0, 0, -76);
    rect(vect.x - 25, vect.y - 50, 50, 50);
    popMatrix();
    pushMatrix();
    translate(0, 76, -76);
    rotateX(PI/2);
    rect(vect.x - 25, 0, 50, 50);
    popMatrix();
}

void mcube7(PVector vect){
    pushMatrix();
    translate(0, 0, 76);
    rect(vect.x - 25, vect.y, 50, 50);
    popMatrix();
    pushMatrix();
    translate(0, -76, 76);
    rotateX(3*PI/2);
    rect(vect.x - 25, 0, 50, 50);
    popMatrix();
}

void mcube8(PVector vect){
    pushMatrix();
    translate(0, 0, 76);
    rect(vect.x - 25, vect.y - 50, 50, 50);
    popMatrix();
    pushMatrix();
    translate(0, 76, 76);
    rotateX(3*PI/2);
    rect(vect.x - 25, 0, 50, 50);
    popMatrix();
}

void mcube9(PVector vect){
    pushMatrix();
    translate(-76, -76, 25);
    rotateX(3*PI/2);
    rect(0, 0, 50, 50);
    popMatrix();
    pushMatrix();
    translate(-76, -76, 25);
    rotateY(PI/2);
    rect(0, 0, 50, 50);
    popMatrix();
}

void mcube10(PVector vect){
    pushMatrix();
    translate(76, -76, 25);
    rotateX(PI/2);
    rect(-50, -50, 50, 50);
    popMatrix();
    pushMatrix();
    translate(76, -76, 25);
    rotateY(PI/2);
    rect(0, 0, 50, 50);
    popMatrix();
}

void mcube11(PVector vect){
    pushMatrix();
    translate(-76, 76, 25);
    rotateX(3*PI/2);
    rect(0, 0, 50, 50);
    popMatrix();
    pushMatrix();
    translate(-76, 76, 25);
    rotateY(PI/2);
    rect(0, -50, 50, 50);
    popMatrix();
}

void mcube12(PVector vect){
    pushMatrix();
    translate(76, 76, 25);
    rotateX(PI/2);
    rect(-50, -50, 50, 50);
    popMatrix();
    pushMatrix();
    translate(76, 76, 25);
    rotateY(PI/2);
    rect(0, -50, 50, 50);
    popMatrix();
}

}