import 'dart:io';
void main(){
  print("Enter a Number");
  int N=int.parse(stdin.readLineSync()!);
  int sum=0;
  int i=N;
  while(i>0){
    sum+=(i%10);
    i=(i/10).floor();
  }
  print('Sum of digits\n$sum');
  }