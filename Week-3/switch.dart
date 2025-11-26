import 'dart:io';

void main() {
  print("Enter a Day number(1-7):");
  var day = int.parse(stdin.readLineSync()!);
  switch (day) {
    case 1:
      print("Monday");
      break;

    // Case
    case 2:
      print("Tuesday");
      break;

    // Case
    case 3:
      print("Wednesday");
      break;

    case 4:
      print("Thursday");
      break;

    case 5:
      print("Friday");
      break;

    case 6:
      print("Saturday");
      break;

    // Case
    case 7:
      print("Sunday");
      break;

    // Default case
    default:
      print("Invalid day");
  }
}
