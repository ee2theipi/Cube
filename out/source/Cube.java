/* autogenerated by Processing revision 1292 on 2023-06-27 */
import processing.core.*;
import processing.data.*;
import processing.event.*;
import processing.opengl.*;

import java.util.HashMap;
import java.util.ArrayList;
import java.io.File;
import java.io.BufferedReader;
import java.io.PrintWriter;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.IOException;

public class Cube extends PApplet {

float inc = 0.05f;
sscube b;
PVector[] vectors = new PVector[25];
public void setup() {
    /* size commented out by preprocessor */; 
    b = new sscube();    
}
  
  public void draw(){
    translate(width/2,height/2);
    inc +=0.009f;
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
class sscube {

//float a, b, c, d;
//this is an constructur (where an object is born)(its name must matchclass name)
//sscube(a, b, c, d){
//    rect(a, b, c, d); 
//}

public void ccube1(PVector vec){
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

public void ccube2(PVector vec){
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

public void ccube3(PVector vec){
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

public void ccube4(PVector vec){
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

public void ccube5(PVector vec){
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

public void ccube6(PVector vec){
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

public void ccube7(PVector vec){
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

public void ccube8(PVector vec){
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

public void mcube1(PVector vect){
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

public void mcube2(PVector vect){
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

public void mcube3(PVector vect){
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

public void mcube4(PVector vect){
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

public void mcube5(PVector vect){
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

public void mcube6(PVector vect){
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

public void mcube7(PVector vect){
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

public void mcube8(PVector vect){
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

public void mcube9(PVector vect){
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

public void mcube10(PVector vect){
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

public void mcube11(PVector vect){
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

public void mcube12(PVector vect){
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


  public void settings() { size(600, 600, P3D); }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Cube" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
