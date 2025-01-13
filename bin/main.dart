import 'package:hybrid_2/hybrid_2.dart' show Lucky;
import "dart:io";

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print("Please provide at least one name as an argument.");
    exit(1);
  }

  for (String name in arguments) {
    // force the name to lowercase (for consistency)
    name = name.toLowerCase();

    // capitalize the first letter of the name
    name = name[0].toUpperCase() + name.substring(1);

    // instantiate the Lucky class to generate a random number
    Lucky integer = Lucky();

    // print the name and random number
    print("Hello $name. Your lucky number is ${integer.randomNumber}.");
  }
}
