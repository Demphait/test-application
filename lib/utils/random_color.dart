import 'package:flutter/material.dart';
import 'package:test_application/utils/int_random.dart';

/// The class that allows you to generate a random color
class RandomColor {
  /// The color that will receive new value
  Color color;

  /// The variable that contains a maximum number of colors
  final int maxNumOfColor = 255;

  /// The variable that defines a fully opaque color
  final int maxAlphaOfColor = 255;

  /// RandomColor class constructor
  RandomColor({
    required this.color,
  });

  /// The method that generetes a new random color
  Color changeColor() {
    return color = Color.fromARGB(
      maxAlphaOfColor,
      maxNumOfColor.random,
      maxNumOfColor.random,
      maxNumOfColor.random,
    );
  }
}
