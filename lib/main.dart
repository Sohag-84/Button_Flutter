import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonApp();
  }
}
//create variable
class ButtonApp extends StatefulWidget {
  const ButtonApp({Key? key}) : super(key: key);

  @override
  _ButtonAppState createState() => _ButtonAppState();
}

class _ButtonAppState extends State<ButtonApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Button"),
          leading: Icon(Icons.menu),
        ),
        body: Column(
          children: [
            RaisedButton(
                onPressed: (){
              setState(() {

              });
            }
            )
          ],
        ),
      ),
    );
  }
}
