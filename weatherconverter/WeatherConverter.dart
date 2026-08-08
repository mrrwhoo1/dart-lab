import 'dart:io';

String c_to_k(String value) {
  if (value.toUpperCase().contains('K')) {
    String clean = value.replaceAll(
      RegExp(r'[^0-9.-]'),
      '',
    ); //removes letters and spaces.
    double? temp = double.tryParse(clean);
    if (temp == null)
      return 'Invalid input!';
    else {
      double celsius = temp - 273.15;
      return "${celsius.toStringAsFixed(2)}°C";
    }
  } else if (value.toUpperCase().contains('C')) {
    String clean = value.replaceAll(
      RegExp(r'[^0-9.-]'),
      '',
    ); //removes letters and spaces.
    double? temp = double.tryParse(clean);
    if (temp == null)
      return 'Invalid input!';
    else {
      double kelvin = temp + 273.15;
      return "${kelvin.toStringAsFixed(2)} K";
    }
  } else {
    return 'Invalid Input';
  }
}

String c_to_f(String value) {
  if (value.toUpperCase().contains("C")) {
    String clean = value.replaceAll(RegExp(r'[^0-9.-]'), '');
    double? temp = double.tryParse(clean);
    if (temp == null)
      return 'Invalid input';
    else {
      double f = (temp * 1.8) + 32;
      return "${f.toStringAsFixed(2)}°F";
    }
  } else if (value.toUpperCase().contains("F")) {
    String clean = value.replaceAll(RegExp(r'[^0-9.-]'), '');
    double? temp = double.tryParse(clean);
    if (temp == null)
      return 'Invalid input';
    else {
      double c = (temp - 32) / 1.8;
      return "${c.toStringAsFixed(2)}°C";
    }
  } else {
    return 'Invalid input.';
  }
}

String f_to_k(String value) {
  if (value.toUpperCase().contains("F")) {
    String clean = value.replaceAll(RegExp(r'[^0-9.-]'), '');
    double? temp = double.tryParse(clean);
    if (temp == null)
      return 'Invalid input';
    else {
      double k = ((temp - 32) * 5 / 9) + 273.15;
      return "${k.toStringAsFixed(2)} K";
    }
  } else if (value.toUpperCase().contains("K")) {
    String clean = value.replaceAll(RegExp(r'[^0-9.-]'), '');
    double? temp = double.tryParse(clean);
    if (temp == null)
      return 'Invalid input';
    else {
      double f = ((temp - 273.15) * 1.8) + 32;
      return "${f.toStringAsFixed(2)}°F";
    }
  } else {
    return 'Invalid input.';
  }
}

void main() {
  stdout.write(
    "Welcome to the Dart Weather Converter \n1. Celsius to Kelvin & Vice Versa\n2. Celsius to Fahrenheit & Vice Versa\n3. Fahrenheit to Kelvin & Vice Versa\naction: ",
  );
  String? input = stdin.readLineSync();
  if (input == '1') {
    stdout.write("Enter a temperature (e.g., '25C' or '300K'): ");
    String? input = stdin.readLineSync();
    if (input != null) {
      print(c_to_k(input));
    }
  } else if (input == '2') {
    stdout.write("Enter a temperature (e.g., '25C' or '300F'): ");
    String? input = stdin.readLineSync();
    if (input != null) {
      print(c_to_f(input));
    }
  } else if (input == '3') {
    stdout.write("Enter a temperature (e.g., '25F' or '300K'): ");
    String? input = stdin.readLineSync();
    if (input != null) {
      print(f_to_k(input));
    }
  } else {
    print("Invalid input!");
    exit(0);
  }
}
