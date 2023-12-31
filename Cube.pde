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

IntList MoveF, MoveB, MoveL, MoveR, MoveU, MoveD;
IntList leftMoveF, leftMoveB, leftMoveL, leftMoveR, leftMoveU, leftMoveD;
//PMatrix3D inverseMatrix;
float x, countF, countB, countL, countR, countU, countD = 0;
int a = 76;
int i;
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

    if (F){
      
        if (x <= 90*countF){
        x = x + 5;
        pushMatrix();
        rotate(radians(x));
        for (int value : MoveF) {
          try {
            this.getClass().getMethod(funcNames[value], PVector.class).invoke(this, vectors[value]);
            } catch (Exception e) {
              e.printStackTrace();
          }
        }
        popMatrix();
        leftMoveF = new IntList();
        for (i = 0; i<20; i++){
          if (!MoveF.hasValue(i)){
            leftMoveF.append(i);
          }  
        }     
        for (int value : leftMoveF) {
          try {
            this.getClass().getMethod(funcNames[value], PVector.class).invoke(this, vectors[value]);
             } catch (Exception e) {
              e.printStackTrace();
            }
        }

        }
        else{
          pushMatrix();
          rotate(radians(90*countF));       
          for (int value : MoveF) {
            try {
              this.getClass().getMethod(funcNames[value], PVector.class).invoke(this, vectors[value]);
                } catch (Exception e) {
                    e.printStackTrace();
            }
           } 
          popMatrix();
          leftMoveF = new IntList();
          for (i = 0; i<20; i++){
            if (!MoveF.hasValue(i)){
              leftMoveF.append(i);
            }  
          }
          for (int value : leftMoveF) {
            try {
              this.getClass().getMethod(funcNames[value], PVector.class).invoke(this, vectors[value]);
            } catch (Exception e) {
              e.printStackTrace();
            }
          }
        }
        if(key == 'B' || key == 'L' || key == 'R' || key == 'U'|| key == 'D'){
          F = false;
          //x = 0;
          countF = 0;
        }
    }

    else if (B){
        if (x <= 90*countB){
        x = x + 5;
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
        leftMoveB = new IntList();
        for (i = 0; i<20; i++){
          if (!MoveB.hasValue(i)){
            leftMoveB.append(i);
          }  
        }     
        for (int value : leftMoveB) {
          try {
            this.getClass().getMethod(funcNames[value], PVector.class).invoke(this, vectors[value]);
             } catch (Exception e) {
              e.printStackTrace();
            }
        }

        }
        else{
        pushMatrix();
        rotate(radians(90*countB));       
          for (int value : MoveB) {
            try {
              this.getClass().getMethod(funcNames[value], PVector.class).invoke(this, vectors[value]);
                } catch (Exception e) {
                    e.printStackTrace();
            }
           } 
        popMatrix();
        leftMoveB = new IntList();
        for (i = 0; i<20; i++){
          if (!MoveB.hasValue(i)){
            leftMoveB.append(i);
          }  
        }

        for (int value : leftMoveB) {
          try {
            this.getClass().getMethod(funcNames[value], PVector.class).invoke(this, vectors[value]);
          } catch (Exception e) {
            e.printStackTrace();
          }
        }

        }
        if(key == 'F' || key == 'L' || key == 'R' || key == 'U'|| key == 'D'){
          B = false;
          //x = 0;
          countB = 0;
        }
    }
    
    else if (L){
        if (x <= 90*countL){
        x = x + 5;
        pushMatrix();
        rotateX(radians(x));
        for (int value : MoveL) {
          try {
            this.getClass().getMethod(funcNames[value], PVector.class).invoke(this, vectors[value]);
            } catch (Exception e) {
              e.printStackTrace();
          }
        }
        popMatrix();
        leftMoveL = new IntList();
        for (i = 0; i<20; i++){
          if (!MoveL.hasValue(i)){
            leftMoveL.append(i);
          }  
        }     
        for (int value : leftMoveL) {
          try {
            this.getClass().getMethod(funcNames[value], PVector.class).invoke(this, vectors[value]);
             } catch (Exception e) {
              e.printStackTrace();
            }
        }

        }
        else{
          pushMatrix();
          rotateX(radians(90*countL));       
          for (int value : MoveL) {
            try {
              this.getClass().getMethod(funcNames[value], PVector.class).invoke(this, vectors[value]);
                } catch (Exception e) {
                    e.printStackTrace();
            }
           } 
          popMatrix();
        leftMoveL = new IntList();
        for (i = 0; i<20; i++){
          if (!MoveL.hasValue(i)){
            leftMoveL.append(i);
          }  
        }
          for (int value : leftMoveL) {
            try {
              this.getClass().getMethod(funcNames[value], PVector.class).invoke(this, vectors[value]);
            } catch (Exception e) {
              e.printStackTrace();
            }
          }
        }
        if(key == 'B' || key == 'F' || key == 'R' || key == 'U'|| key == 'D'){
          L = false;
          //x = 0;
          countL = 0;
        }
    }

    else if (R){
        if (x <= 90*countR){
        x = x + 5;
        pushMatrix();
        rotateX(radians(x));
        for (int value : MoveR) {
          try {
            this.getClass().getMethod(funcNames[value], PVector.class).invoke(this, vectors[value]);
            } catch (Exception e) {
              e.printStackTrace();
          }
        }
        popMatrix();
        leftMoveR = new IntList();
        for (i = 0; i<20; i++){
          if (!MoveR.hasValue(i)){
            leftMoveR.append(i);
          }  
        }     
        for (int value : leftMoveR) {
          try {
            this.getClass().getMethod(funcNames[value], PVector.class).invoke(this, vectors[value]);
             } catch (Exception e) {
              e.printStackTrace();
            }
        }

        }
        else{
          pushMatrix();
          rotateX(radians(90*countR));       
          for (int value : MoveR) {
            try {
              this.getClass().getMethod(funcNames[value], PVector.class).invoke(this, vectors[value]);
                } catch (Exception e) {
                    e.printStackTrace();
            }
           } 
          popMatrix();
          leftMoveR = new IntList();
          for (i = 0; i<20; i++){
          if (!MoveR.hasValue(i)){
            leftMoveR.append(i);
          }  
        }
          for (int value : leftMoveR) {
            try {
              this.getClass().getMethod(funcNames[value], PVector.class).invoke(this, vectors[value]);
            } catch (Exception e) {
              e.printStackTrace();
            }
          }
        }
        if(key == 'B' || key == 'L' || key == 'F' || key == 'U'|| key == 'D'){
          R = false;
          //x = 0;
          countR = 0;
        }
    }

    else if (U){
        if (x <= 90*countU){
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
        
     //////////////////////////   
        leftMoveU = new IntList();
        for (i = 0; i<20; i++){
          if (!MoveU.hasValue(i)){
            leftMoveU.append(i);
          }  
        }     
        for (int value : leftMoveU) {
          try {
            this.getClass().getMethod(funcNames[value], PVector.class).invoke(this, vectors[value]);
             } catch (Exception e) {
              e.printStackTrace();
            }
        }
        ///////////////////////
        
        }
        else{
        pushMatrix();
        rotateY(radians(90*countU));       
          for (int value : MoveU) {
            try {
              this.getClass().getMethod(funcNames[value], PVector.class).invoke(this, vectors[value]);
                } catch (Exception e) {
                    e.printStackTrace();
            }
           } 
        popMatrix();
        leftMoveU = new IntList();
        for (i = 0; i<20; i++){
          if (!MoveU.hasValue(i)){
            leftMoveU.append(i);
          }  
        }
        for (int value : leftMoveU) {
          try {
            this.getClass().getMethod(funcNames[value], PVector.class).invoke(this, vectors[value]);
             } catch (Exception e) {
              e.printStackTrace();
            }
        }
        }
        if(key == 'B' || key == 'L' || key == 'R' || key == 'F'|| key == 'D'){
          U = false;
          //x = 0;
          countU = 0;
        }
    }

    else if (D){
        if (x <= 90*countD){
        x = x + 5;
        pushMatrix();
        rotateY(radians(x));
        for (int value : MoveD) {
          try {
            this.getClass().getMethod(funcNames[value], PVector.class).invoke(this, vectors[value]);
            } catch (Exception e) {
              e.printStackTrace();
          }
        }
        popMatrix();
        leftMoveD = new IntList();
        for (i = 0; i<20; i++){
          if (!MoveD.hasValue(i)){
            leftMoveD.append(i);
          }  
        }     
        for (int value : leftMoveD) {
          try {
            this.getClass().getMethod(funcNames[value], PVector.class).invoke(this, vectors[value]);
             } catch (Exception e) {
              e.printStackTrace();
            }
        }

        }
        else{
          pushMatrix();
          rotateY(radians(90*countD));       
          for (int value : MoveD) {
            try {
              this.getClass().getMethod(funcNames[value], PVector.class).invoke(this, vectors[value]);
                } catch (Exception e) {
                    e.printStackTrace();
            }
           } 
          popMatrix();
          leftMoveD = new IntList();
          for (i = 0; i<20; i++){
            if (!MoveD.hasValue(i)){
              leftMoveD.append(i);
            }  
          }
          for (int value : leftMoveD) {
            try {
              this.getClass().getMethod(funcNames[value], PVector.class).invoke(this, vectors[value]);
            } catch (Exception e) {
              e.printStackTrace();
            }
          }
        }
        if(key == 'B' || key == 'L' || key == 'R' || key == 'U'|| key == 'F'){
          D = false;
          //x = 0;
          countD = 0;
        }
    }

    else{ //else draw current position() instead of this drawcube() starting position 
      // draws cube in solved position 
      for (int i = 0; i < funcNames.length; i++) {
        try {
          this.getClass().getMethod(funcNames[i], PVector.class).invoke(this, vectors[i]);
        } catch (Exception e) {
          e.printStackTrace();
          }
      }   
    }
  }


  // TODO:
  // 1) else case
  // 2) check where vectors land after matrix multiplication

  // alternatively instead of having FBLRUD boolean put the else if block in their respective keypressed (eliminates the problem of
  // changing the boolean to true and false which is showing problems)
  // Q.how to use keypressed in draw()

  //**Generalise the vector input to ccube and mcube input 
  