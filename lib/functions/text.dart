import 'package:flutter_example_testing/functions/counter.dart';

class Print {
  var counter = Counter();

  String showText() {
    var number = counter.getNumber();

    return "this number $number";
  }
}
