import 'dart:io';

int Factorial(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return n * Factorial(n - 1);
  }
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  int result = Factorial(n);
  print("Factorial of $n is $result");
}
