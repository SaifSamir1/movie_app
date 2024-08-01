import 'package:flutter/material.dart';

abstract class Styles {
  static const textSkip = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: Color.fromRGBO(0, 0, 0, 0.5), // Use Color.fromRGBO for opacity
  );

  static const textOnBoarding = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w500,
      color: Color(0xff6D6D6D),
  );

}
