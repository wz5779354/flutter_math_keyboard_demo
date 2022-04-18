import 'package:flutter/material.dart';
import 'package:flutter_math_keyboard_demo/widgets/scaffold.dart';

import '../data/strings.dart';

/// Demo application for `math_keyboard`.
class DemoApp extends StatefulWidget {
  /// Constructs a [DemoApp].
  const DemoApp({Key? key}) : super(key: key);

  @override
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  var _darkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        brightness: _darkMode ? Brightness.dark : Brightness.light,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.amber,
        ).copyWith(
          secondary: Colors.amberAccent,
        ),
      ),
      home: DemoScaffold(
        onToggleBrightness: () {
          setState(() {
            _darkMode = !_darkMode;
          });
        },
      ),
    );
  }
}
