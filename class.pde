//class sscube {

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
    fill(0, 0, 255);
    rect(0,0,50,50);
    popMatrix();
}

void ccube2(PVector vec){
    pushMatrix();
    translate(0, 0, 76);
    //scale(0, 0, 0);
    fill(255, 0, 0);
    rect(vec.x - 50, vec.y , 50, 50);
    popMatrix();
    pushMatrix();
    translate(76, -76, 76);
    rotateY(PI/2);
    fill(255, 255, 255);
    rect(0,0,50,50);
    popMatrix();
    pushMatrix();
    translate(76, -76, 76);
    rotateX(3*PI/2);
    fill(0, 0, 255);
    rect(-50,0,50,50);
    popMatrix();
}

void ccube3(PVector vec){
    pushMatrix();
    translate(0, 0, -76);
    //scale(0, 0, 0);
    fill(255, 255, 0);
    rect(vec.x, vec.y , 50, 50);
    popMatrix();
    pushMatrix();
    translate(-76, -76, -76);
    rotateY(3*PI/2);
    fill(0, 255, 0);
    rect(0,0,50,50);
    popMatrix();
    pushMatrix();
    translate(-76, -76, -76);
    rotateX(PI/2);
    fill(0, 0, 255);
    rect(0,0,50,50);
    popMatrix();
}

void ccube4(PVector vec){
    pushMatrix();
    translate(0, 0, -76);
    //scale(0, 0, 0);
    fill(255, 255, 0);
    rect(vec.x - 50, vec.y , 50, 50);
    popMatrix();
    pushMatrix();
    translate(76, -76, -76);
    rotateY(3*PI/2);
    fill(255, 255, 255);
    rect(0 ,0 ,50 ,50);
    popMatrix();
    pushMatrix();
    translate(76, -76, -76);
    rotateX(PI/2);
    fill(0, 0, 255);
    rect(-50,0,50,50);
    popMatrix();
}

void ccube5(PVector vec){
    pushMatrix();
    translate(0, 0, 76);
    //scale(0, 0, 0);
    fill(255, 0, 0);
    rect(vec.x, vec.y - 50, 50, 50);
    popMatrix();
    pushMatrix();
    translate(-76, 76, 76);
    rotateY(PI/2);
    fill(0, 255, 0);
    rect(0,-50,50,50);
    popMatrix();
    pushMatrix();
    translate(-76, 76, 76);
    rotateX(3*PI/2);
    fill(255, 165, 0);
    rect(0,0,50,50);
    popMatrix();
}

void ccube6(PVector vec){
    pushMatrix();
    translate(0, 0, -76);
    //scale(0, 0, 0);
    fill(255, 255, 0);
    rect(vec.x, vec.y - 50, 50, 50);
    popMatrix();
    pushMatrix();
    translate(-76, 76, -76);
    rotateY(3*PI/2);
    fill(0, 255, 0);
    rect(0,-50,50,50);
    popMatrix();
    pushMatrix();
    translate(-76, 76, -76);
    rotateX(PI/2);
    fill(255, 165, 0);
    rect(0,0,50,50);
    popMatrix();
}

void ccube7(PVector vec){
    pushMatrix();
    translate(0, 0, -76);
    //scale(0, 0, 0);
    fill(255, 255, 0);
    rect(vec.x -50, vec.y - 50, 50, 50);
    popMatrix();
    pushMatrix();
    translate(76, 76, -76);
    rotateY(3*PI/2);
    fill(255, 255, 255);
    rect(0,-50,50,50);
    popMatrix();
    pushMatrix();
    translate(76, 76, -76);
    rotateX(PI/2);
    fill(255, 165, 0);
    rect(-50,0,50,50);
    popMatrix();
}

void ccube8(PVector vec){
    pushMatrix();
    translate(0, 0, 76);
    //scale(0, 0, 0);
    fill(255, 0, 0);
    rect(vec.x -50, vec.y - 50, 50, 50);
    popMatrix();
    pushMatrix();
    translate(76, 76, 76);
    rotateY(PI/2);
    fill(255, 255, 255);
    rect(0,-50,50,50);
    popMatrix();
    pushMatrix();
    translate(76, 76, 76);
    rotateX(3*PI/2);
    fill(255, 165, 0);
    rect(-50,0,50,50);
    popMatrix();
}

void mcube1(PVector vect){
    pushMatrix();
    translate(0, 0, 76);
    fill(255, 0, 0);
    rect(-76, vect.y - 25, 50, 50);
    popMatrix();
    pushMatrix();
    translate(-76, 0, 76);
    rotateY(PI/2);
    fill(0, 255, 0);
    rect(0, vect.y - 25, 50, 50);
    popMatrix();
}

void mcube2(PVector vect){
    pushMatrix();
    translate(0, 0, 76);
    fill(255, 0, 0);
    rect(76 - 50, vect.y - 25, 50, 50);
    popMatrix();
    pushMatrix();
    translate(76, 0, 76);
    rotateY(PI/2);
    fill(255, 255, 255);
    rect(0, vect.y - 25, 50, 50);
    popMatrix();
}

void mcube3(PVector vect){
    pushMatrix();
    translate(0, 0, -76);
    fill(255, 255, 0);
    rect(-76, vect.y - 25, 50, 50);
    popMatrix();
    pushMatrix();
    translate(-76, 0, -76);
    rotateY(3*PI/2);
    fill(0, 255, 0);
    rect(0, vect.y - 25, 50, 50);
    popMatrix();
}

void mcube4(PVector vect){
    pushMatrix();
    translate(0, 0, -76);
    fill(255, 255, 0);
    rect(76 - 50, vect.y - 25, 50, 50);
    popMatrix();
    pushMatrix();
    translate(76, 0, -76);
    rotateY(3*PI/2);
    fill(255, 255, 255);
    rect(0, vect.y - 25, 50, 50);
    popMatrix();
}

void mcube5(PVector vect){
    pushMatrix();
    translate(0, 0, -76);
    fill(255, 255, 0);
    rect(vect.x - 25, vect.y, 50, 50);
    popMatrix();
    pushMatrix();
    translate(0, -76, -76);
    rotateX(PI/2);
    fill(0, 0, 255);
    rect(vect.x - 25, 0, 50, 50);
    popMatrix();
}

void mcube6(PVector vect){
    pushMatrix();
    translate(0, 0, -76);
    fill(255, 255, 0);
    rect(vect.x - 25, vect.y - 50, 50, 50);
    popMatrix();
    pushMatrix();
    translate(0, 76, -76);
    rotateX(PI/2);
    fill(255, 165, 0);
    rect(vect.x - 25, 0, 50, 50);
    popMatrix();
}

void mcube7(PVector vect){
    pushMatrix();
    translate(0, 0, 76);
    fill(255, 0, 0);
    rect(vect.x - 25, vect.y, 50, 50);
    popMatrix();
    pushMatrix();
    translate(0, -76, 76);
    rotateX(3*PI/2);
    fill(0, 0, 255);
    rect(vect.x - 25, 0, 50, 50);
    popMatrix();
}

void mcube8(PVector vect){
    pushMatrix();
    translate(0, 0, 76);
    fill(255, 0, 0);
    rect(vect.x - 25, vect.y - 50, 50, 50);
    popMatrix();
    pushMatrix();
    translate(0, 76, 76);
    rotateX(3*PI/2);
    fill(255, 165, 0);
    rect(vect.x - 25, 0, 50, 50);
    popMatrix();
}

void mcube9(PVector vect){
    pushMatrix();
    translate(-76, -76, 25);
    rotateX(3*PI/2);
    fill(0, 0, 255);
    rect(0, 0, 50, 50);
    popMatrix();
    pushMatrix();
    translate(-76, -76, 25);
    rotateY(PI/2);
    fill(0, 255, 0);
    rect(0, 0, 50, 50);
    popMatrix();
}

void mcube10(PVector vect){
    pushMatrix();
    translate(76, -76, 25);
    rotateX(PI/2);
    fill(0, 0, 255);
    rect(-50, -50, 50, 50);
    popMatrix();
    pushMatrix();
    translate(76, -76, 25);
    rotateY(PI/2);
    fill(255, 255, 255);
    rect(0, 0, 50, 50);
    popMatrix();
}

void mcube11(PVector vect){
    pushMatrix();
    translate(-76, 76, 25);
    rotateX(3*PI/2);
    fill(255, 165, 0);
    rect(0, 0, 50, 50);
    popMatrix();
    pushMatrix();
    translate(-76, 76, 25);
    rotateY(PI/2);
    fill(0, 255, 0);
    rect(0, -50, 50, 50);
    popMatrix();
}

void mcube12(PVector vect){
    pushMatrix();
    translate(76, 76, 25);
    rotateX(PI/2);
    fill(255, 165, 0);
    rect(-50, -50, 50, 50);
    popMatrix();
    pushMatrix();
    translate(76, 76, 25);
    rotateY(PI/2);
    fill(255, 255, 255);
    rect(0, -50, 50, 50);
    popMatrix();
}

//}


void drawcube() {
        ccube1(vectors[0]);       
        ccube2(vectors[1]);       
        ccube3(vectors[2]);       
        ccube4(vectors[3]); 
        ccube5(vectors[4]);       
        ccube6(vectors[5]);      
        ccube7(vectors[6]);       
        ccube8(vectors[7]); 
        mcube1(vectors[8]);
        mcube2(vectors[9]);
        mcube3(vectors[10]);
        mcube4(vectors[11]);
        mcube5(vectors[12]);
        mcube6(vectors[13]);
        mcube7(vectors[14]);
        mcube8(vectors[15]);
        mcube9(vectors[16]);
        mcube10(vectors[17]);
        mcube11(vectors[18]);
        mcube12(vectors[19]);     
}