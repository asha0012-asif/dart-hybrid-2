import "dart:math";
import "dart:io";

class Lucky {
  int? randomNumber;

  Lucky() {
    String? minString = Platform.environment['MIN'];
    String? maxString = Platform.environment['MAX'];

    // ensure a min and max value are provided
    if (minString == null || maxString == null) {
      print('Please provide min and max values.');
      exit(1);
    }

    // ensure the min and max values are integers
    if (int.tryParse(minString) == null || int.tryParse(maxString) == null) {
      print('Please provide valid min and max values.');
      exit(1);
    }

    int min = int.parse(minString);
    int max = int.parse(maxString);

    // ensure the min value is less than the max value
    if (min > max) {
      print("Min value must be less than the max value.");
      exit(1);
    }

    var random = Random();
    randomNumber = min + random.nextInt(max - min + 1);
  }
}
