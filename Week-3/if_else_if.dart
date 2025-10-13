import 'dart:io';
void main(){
  print("Enter student marks=");
  var marks=int.parse(stdin.readLineSync()!);
  if(marks>=80&&marks<=100){
    print("Grade received is excellent");
  }else if(marks>=70&&marks<80){
    print("Grade received is A");
  }else if(marks>=60&&marks<70){
    print("Grade received is B");
}else if(marks>=50&&marks<60){
    print("Grade received is c");
  }else if(marks>=40&&marks<50){
    print("Grade received is D");
  }else{
    print("Fail");
  }
  }