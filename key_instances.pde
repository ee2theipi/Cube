void keyPressed(){

  if (key == 'F'){
    F = true;
    countF += 1;
    MoveF = new IntList();
    for(int i = 0; i<20; i = i + 1){
      if(nvectors[i].z > 25){
        MatrixF.mult(nvectors[i], nvectors[i]);
        MoveF.append(i);
        //println(i,nvectors[i].x,nvectors[i].y,nvectors[i].z, vectors[i].x, vectors[i].y, vectors[i].z);
      }
   }
   println(MoveF);
   //int countB, countL, countR, countU, countD = 0;
    }   

  else if (key == 'B'){
    B = true;
    countB += 1;
    MoveB = new IntList();
    for(int i = 0; i<20; i = i + 1){
      if(nvectors[i].z < -25){
        MatrixB.mult(nvectors[i], nvectors[i]);
        MoveB.append(i);    
      }
   }
   println(MoveB);
   //int countF, countL, countR, countU, countD = 0;
    }

  else if (key == 'L'){
    L = true;
    countL += 1;
    MoveL = new IntList();
    for(int i = 0; i<20; i = i + 1){
      if(nvectors[i].x < -25){
        MatrixL.mult(nvectors[i], nvectors[i]);
        MoveL.append(i);      
      }
   }
   println(MoveL);
   //int countB, countF, countR, countU, countD = 0;
    }

  else if (key == 'R'){
    R = true;
    countR += 1;
    MoveR = new IntList();
    for(int i = 0; i < 20; i = i + 1){
      if(nvectors[i].x > 25){
        MatrixR.mult(nvectors[i], nvectors[i]);
        MoveR.append(i);       
      }
   }
   println(MoveR);
   //int countB, countL, countF, countU, countD = 0;
    }

  else if (key == 'U'){
    U = true;
    countU += 1;
    MoveU = new IntList();
    for(int i = 0; i < 20; i = i + 1){
      if(nvectors[i].y < -25){
        MatrixU.mult(nvectors[i], nvectors[i]);
        MoveU.append(i);            
    }
   }
   println(MoveU);  
   //int countB, countL, countR, countF, countD = 0;
    }
  else if(key == 'D'){
    D = true;
    countD += 1;
    MoveD = new IntList();
    for(int i = 0; i<20; i = i + 1){
      if(nvectors[i].y > 25){
        MatrixD.mult(nvectors[i], nvectors[i]);
        MoveD.append(i);        
      }
   }
   println(MoveD);
   //int countB, countL, countR, countU, countF = 0;
    }
    
}