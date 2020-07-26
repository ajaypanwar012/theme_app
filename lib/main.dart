import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LightDarkTheme();
  }
}

class LightDarkTheme extends StatefulWidget {
  const LightDarkTheme({
    Key key,
  }) : super(key: key);

  @override
  _LightDarkThemeState createState() => _LightDarkThemeState();
}

ThemeData _lightTheme = ThemeData(
  accentColor: Colors.pinkAccent,
  brightness: Brightness.light,
  primaryColor: Colors.pink,
);

ThemeData _darkTheme = ThemeData(
  accentColor: Colors.amberAccent,
  brightness: Brightness.dark,
  primaryColor: Colors.amber,
);

bool _light = true;

class _LightDarkThemeState extends State<LightDarkTheme> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: _light ? _lightTheme : _darkTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Themes'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Yo I'm hear, all across the border!"
              ),
              Switch(value: _light, onChanged: (state){
                setState(() {
                  _light = state;
                });
              })
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
