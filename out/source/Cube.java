/* autogenerated by Processing revision 1292 on 2023-06-23 */
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

//float inc = 0.01;
sscube b;
public void setup() {
    /* size commented out by preprocessor */; 
    b = new sscube();    
}
  
  public void draw(){
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
class sscube {

//float a, b, c, d;

//this is an constructur (where an object is born)(its name must matchclass name)
//sscube(a, b, c, d){
//    rect(a, b, c, d); 
//}
public void sface(PVector vector){
    rect(vector.x - 20, vector.y - 20, 50, 50);
}
}
//void leftface(){
    //pushMatrix();
//    translate(0, 300, 0);
//    rotateY(PI/2);
    //popMatrix();
    
//}
//void display(){
//stroke(0);
//fill(127);
//ellipse(50, 50, 63, 50);
//}
//}


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
