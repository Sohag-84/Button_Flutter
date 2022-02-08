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
String btnText = "Click here";
Color txtColor = Colors.black;
Color btnColor = Colors.white;

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
        backgroundColor: txtColor,
        appBar: AppBar(
          title: Text("Button"),
          leading: Icon(Icons.menu),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: RaisedButton(
                child: Text(btnText,style: TextStyle(color: txtColor),),
                  color: btnColor,
                  onPressed: (){
                setState(() {
                  btnText = "Button is clicked";
                  txtColor = Colors.redAccent;
                  btnColor = Colors.black;
                });
              }
              ),
            )
          ],
        ),
      ),
    );
  }
}
