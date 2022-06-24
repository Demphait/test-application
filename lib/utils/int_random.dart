import 'dart:math';

final Random _random = Random();

/// The extension to int that allows you to generate
/// a random integer up to a value you specify.
extension IntRandom on int {
  /// The getter that generates a random integer up to a value you specify.
  int get random => _random.nextInt(this);
}
