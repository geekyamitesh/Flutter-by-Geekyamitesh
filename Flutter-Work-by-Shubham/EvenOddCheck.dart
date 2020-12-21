import 'dart:io';

main() {
  print("Enter the number till where you want to check:");
  var input = int.parse(stdin.readLineSync());
  print("For Loop");
  for (int i = 1; i <= input; i++) {
    if (i % 2 == 0) {
      print("$i is an even number.");
    } else
      print("$i is an odd number.");
  }
  print("While Loop");
  int i = 1;
  while (i <= input) {
    if (i % 2 == 0)
      print("$i is an even number.");
    else
      print("$i is an odd number.");
    i += 1;
  }
}
