import 'package:flutter/material.dart';
import 'package:test_application/views/main_view/main_view.dart';

/// The class that contains a MaterialApp and a default route of app
class App extends StatelessWidget {
  /// App class constructor that can take a key
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
