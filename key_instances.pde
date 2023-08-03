void keyPressed(){
  if (key == 'F'){
    F = true;
    MoveF = new IntList();
    for(int i = 0; i<20; i = i + 1){
      if(nvectors[i].z > 25){
        MatrixF.mult(vectors[i], nvectors[i]);
        MoveF.append(i);
        
        //println(i,nvectors[i].x,nvectors[i].y,nvectors[i].z, vectors[i].x, vectors[i].y, vectors[i].z);
      }
   }
   println(MoveF);
    }    
  else if (
    key == 'B'){
    B = true;
    MoveB = new IntList();
    for(int i = 0; i<20; i = i + 1){
      if(nvectors[i].z < -25){
        MatrixB.mult(vectors[i], nvectors[i]);
        MoveB.append(i);
        
        //println(i,nvectors[i].x,nvectors[i].y,nvectors[i].z, vectors[i].x, vectors[i].y, vectors[i].z);
      }
   }
   println(MoveB);
    }
  else if (key == 'L'){
    L = true;
    MoveL = new IntList();
    for(int i = 0; i<20; i = i + 1){
      if(nvectors[i].x < -25){
        MatrixL.mult(vectors[i], nvectors[i]);
        MoveL.append(i);
        
        //println(i,nvectors[i].x,nvectors[i].y,nvectors[i].z, vectors[i].x, vectors[i].y, vectors[i].z);
      }
   }
   println(MoveL);
    }
  else if (key == 'R'){
    R = true;
    MoveR = new IntList();
    for(int i = 0; i < 20; i = i + 1){
      if(nvectors[i].x > 25){
        MatrixR.mult(vectors[i], nvectors[i]);
        MoveR.append(i);
        
        //println(i,nvectors[i].x,nvectors[i].y,nvectors[i].z, vectors[i].x, vectors[i].y, vectors[i].z);
      }
   }
   println(MoveR);
    }
  else if (key == 'U'){
    U = true;
    MoveU = new IntList();
    for(int i = 0; i < 20; i = i + 1){
      if(nvectors[i].y < -25){
        MatrixU.mult(vectors[i], nvectors[i]);
        MoveU.append(i);  
        //println(i,nvectors[i].x,nvectors[i].y,nvectors[i].z, vectors[i].x, vectors[i].y, vectors[i].z);
        
    }
   }
   println(MoveU);  
    }
  else if(key == 'D'){
    D = true;
    MoveD = new IntList();
    for(int i = 0; i<20; i = i + 1){
      if(nvectors[i].y > 25){
        MatrixD.mult(vectors[i], nvectors[i]);
        MoveD.append(i);        
        //println(i,nvectors[i].x,nvectors[i].y,nvectors[i].z, vectors[i].x, vectors[i].y, vectors[i].z);
      }
   }
   println(MoveD);
    }
}