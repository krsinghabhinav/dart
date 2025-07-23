import 'dart:io';


void main(){
  int n=5;

  for(int i=1; i<=n; i++){
    for(int j =1; j<= n; j++){
      if(i==j || i+j == n+1){
         stdout.write("*");
      }else{
         stdout.write(" ");
      }

    }
           stdout.write("\n");

  }
}