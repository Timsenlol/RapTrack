import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:raptrack/scoped_models/main.dart';
import 'package:raptrack/pages/hauptmenu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp> {
 final MainModel _model = MainModel();


@override
  Widget build(BuildContext context) {
    return ScopedModel<MainModel>(
      model: _model,
      child: MaterialApp(
        theme: ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.blue,
            accentColor: Colors.deepPurple,
            buttonColor: Colors.deepPurple),
        routes: {
          '/': (BuildContext context) =>
               hauptmenu(),
        }
           ),
    );

    }
}