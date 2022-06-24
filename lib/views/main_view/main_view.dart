import 'package:flutter/material.dart';
import 'package:test_application/utils/random_color.dart';

/// The class that contains the main view of the app
/// It has a variable _backGroundColor that changes every time
/// when background taps
class MainView extends StatefulWidget {
  /// MainView constructor
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  /// default background color of MainView
  Color _backgroundColor = const Color(0xFFFFFFFF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Material(
          color: _backgroundColor,
          child: InkWell(
            onTap: onTap,
            child: const Center(
              child: Text(
                'Hey there',
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onTap() {
    setState(
      () {
        _backgroundColor = RandomColor(
          color: _backgroundColor,
        ).changeColor();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Background color is $_backgroundColor'),
            duration: const Duration(seconds: 1),
          ),
        );
      },
    );
  }
}
