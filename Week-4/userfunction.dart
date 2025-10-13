import 'dart:io';

void calculateInterest(double principle, double rate, double time) {
  double interest = principle * rate * time / 100;
  print("Simple interest is $interest");
}

void main() {
  print("principle:");
  double principle = double.parse(stdin.readLineSync()!);
  print("rate:");
  double rate = double.parse(stdin.readLineSync()!);
  print("Time:");
  double time = double.parse(stdin.readLineSync()!);
  calculateInterest(principle, rate, time);
}
