import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const DarkLightTheme();
  }
}

class DarkLightTheme extends StatefulWidget {
  const DarkLightTheme({Key key}) : super(key: key);

  @override
  _DarkLigthThemeState createState() => _DarkLigthThemeState();
}

ThemeData _lightTheme = ThemeData.light();
ThemeData _darkTheme = ThemeData.dark();
bool _light = true;

class _DarkLigthThemeState extends State<DarkLightTheme> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _light ? _lightTheme : _darkTheme,
      title: "Test app",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Test app"),
        ),
        body: Center(
            child: Switch(
                value: _light,
                onChanged: (state) {
                  setState(() {
                    _light = state;
                  });
                })),
      ),
    );
  }
}
