PMatrix3D MatrixF;
PMatrix3D MatrixB;
PMatrix3D MatrixL;
PMatrix3D MatrixR;
PMatrix3D MatrixU;
PMatrix3D MatrixD;
PMatrix3D Matrixf;
PMatrix3D Matrixb;
PMatrix3D Matrixl;
PMatrix3D Matrixr;
PMatrix3D Matrixu;
PMatrix3D Matrixd;


IntList MoveF;
IntList MoveB;
IntList MoveL;
IntList MoveR;
IntList MoveU;
IntList MoveD;
//PMatrix3D inverseMatrix;
float x = 0;
int a = 76;
boolean F,B,L,R,U,D = false;

PVector[] vectors = new PVector[20];
PVector[] nvectors = new PVector[20];
String[] funcNames = {"ccube1", "ccube2", "ccube3","ccube4", "ccube5", "ccube6","ccube7", "ccube8",
                      "mcube1","mcube2","mcube3","mcube4","mcube5","mcube6","mcube7","mcube8","mcube9",
                      "mcube10","mcube11","mcube12"};

void setup() {
    size(500,500,P3D); 
    translate(width/2,height/2);
      
    MatrixF = new PMatrix3D();
    MatrixB = new PMatrix3D();
    MatrixL = new PMatrix3D();
    MatrixR = new PMatrix3D();
    MatrixU = new PMatrix3D();
    MatrixD = new PMatrix3D();    
    MatrixF.rotate(PI/2);
    MatrixB.rotate(PI/2);    
    MatrixL.rotateX(PI/2);    
    MatrixR.rotateX(PI/2);   
    MatrixU.rotateY(PI/2);
    MatrixD.rotateY(PI/2);
 
    vectors[0] = new PVector(-a, -a, a);
    vectors[1] = new PVector(a, -a, a);
    vectors[2] = new PVector(-a, -a, -a);
    vectors[3] = new PVector(a, -a, -a);
    vectors[4] = new PVector(-a, a, a);
    vectors[5] = new PVector(-a, a, -a);
    vectors[6] = new PVector(a, a, -a);
    vectors[7] = new PVector(a, a, a);
    vectors[8] = new PVector(-a, 0, a);
    vectors[9] = new PVector(a, 0, a);
    vectors[10] = new PVector(-a, 0, -a);
    vectors[11] = new PVector(a, 0, -a);
    vectors[12] = new PVector(0, -a, -a);
    vectors[13] = new PVector(0, a, -a);
    vectors[14] = new PVector(0, -a, a);
    vectors[15] = new PVector(0, a, a);
    vectors[16] = new PVector(-a, -a, 0);
    vectors[17] = new PVector(a, -a, 0);
    vectors[18] = new PVector(-a, a, 0);
    vectors[19] = new PVector(a, a, 0);
    
    nvectors[0] = new PVector(-a, -a, a);
    nvectors[1] = new PVector(a, -a, a);
    nvectors[2] = new PVector(-a, -a, -a);
    nvectors[3] = new PVector(a, -a, -a);
    nvectors[4] = new PVector(-a, a, a);
    nvectors[5] = new PVector(-a, a, -a);
    nvectors[6] = new PVector(a, a, -a);
    nvectors[7] = new PVector(a, a, a);
    nvectors[8] = new PVector(-a, 0, a);
    nvectors[9] = new PVector(a, 0, a);
    nvectors[10] = new PVector(-a, 0, -a);
    nvectors[11] = new PVector(a, 0, -a);
    nvectors[12] = new PVector(0, -a, -a);
    nvectors[13] = new PVector(0, a, -a);
    nvectors[14] = new PVector(0, -a, a);
    nvectors[15] = new PVector(0, a, a);
    nvectors[16] = new PVector(-a, -a, 0);
    nvectors[17] = new PVector(a, -a, 0);
    nvectors[18] = new PVector(-a, a, 0);
    nvectors[19] = new PVector(a, a, 0);   
}

  void draw(){
    translate(width/2,height/2);
    rotateY(-degrees(mouseX)/4000);
    rotateX(-degrees(mouseY)/4000);
    background(155);
    strokeWeight(2);

    if (U){
      if (x <= 90){
        x = x + 3;
        pushMatrix();
        rotateY(radians(x));
      for (int value : MoveU) {
        try {
        this.getClass().getMethod(funcNames[value], PVector.class).invoke(this, vectors[value]);
      } catch (Exception e) {
        e.printStackTrace();
        }
      }
      
        popMatrix();
        ccube5(vectors[4]);       
        ccube6(vectors[5]);      
        ccube7(vectors[6]);       
        ccube8(vectors[7]); 
        mcube1(vectors[8]);
        mcube2(vectors[9]);
        mcube3(vectors[10]);
        mcube4(vectors[11]);
        mcube6(vectors[13]);
        mcube8(vectors[15]);
        mcube11(vectors[18]);
        mcube12(vectors[19]);
        }
      else{
        pushMatrix();
        rotateY(radians(90));       
          for (int value : MoveU) {
            try {
              this.getClass().getMethod(funcNames[value], PVector.class).invoke(this, vectors[value]);
                } catch (Exception e) {
                    e.printStackTrace();
            }
           } 
        popMatrix();
        ccube5(vectors[4]);       
        ccube6(vectors[5]);      
        ccube7(vectors[6]);       
        ccube8(vectors[7]); 
        mcube1(vectors[8]);
        mcube2(vectors[9]);
        mcube3(vectors[10]);
        mcube4(vectors[11]);
        mcube6(vectors[13]);
        mcube8(vectors[15]);
        mcube11(vectors[18]);
        mcube12(vectors[19]); 
        }
    }
    
    else if (B){
        if (x <= 90){
        x = x + 3;
        pushMatrix();
        rotate(radians(x));
      for (int value : MoveB) {
    try {
        this.getClass().getMethod(funcNames[value], PVector.class).invoke(this, vectors[value]);
    } catch (Exception e) {
        e.printStackTrace();
    }
      }
      
        popMatrix();
        ccube1(vectors[0]);       
        ccube2(vectors[1]);
        ccube5(vectors[4]);                    
        ccube8(vectors[7]); 
        mcube1(vectors[8]);
        mcube2(vectors[9]);
        mcube7(vectors[14]);
        mcube8(vectors[15]);
        mcube9(vectors[16]);
        mcube10(vectors[17]);
        mcube11(vectors[18]);
        mcube12(vectors[19]);
        }
        else{
        pushMatrix();
        rotate(radians(90));       
          for (int value : MoveB) {
            try {
              this.getClass().getMethod(funcNames[value], PVector.class).invoke(this, vectors[value]);
                } catch (Exception e) {
                    e.printStackTrace();
            }
           } 
        popMatrix();
        ccube1(vectors[0]);       
        ccube2(vectors[1]);
        ccube5(vectors[4]);                   
        ccube8(vectors[7]); 
        mcube1(vectors[8]);
        mcube2(vectors[9]);
        mcube7(vectors[14]);
        mcube8(vectors[15]);
        mcube9(vectors[16]);
        mcube10(vectors[17]);
        mcube11(vectors[18]);
        mcube12(vectors[19]); 
        }
    }
    
    else{
     
      for (int i = 0; i < funcNames.length; i++) {
    try {
        this.getClass().getMethod(funcNames[i], PVector.class).invoke(this, vectors[i]);
    } catch (Exception e) {
        e.printStackTrace();
    }
      }

      //drawcube();      
    }
  }

        //PVector Nvectors = new PVector();
        //vectors[0].x = MatrixU.m00 * vectors[0].x + MatrixU.m01 * vectors[0].y + MatrixU.m02 * vectors[0].z;
        //vectors[0].y = MatrixU.m10 * vectors[0].x + MatrixU.m11 * vectors[0].y + MatrixU.m12 * vectors[0].z;
        //vectors[0].z = MatrixU.m20 * vectors[0].x + MatrixU.m21 * vectors[0].y + MatrixU.m22 * vectors[0].z;
        //println(vectors[0].x,vectors[0].y,vectors[0].z);
        //println(Nvectors[0].x,Nvectors[0].y,Nvectors[0].z);