import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnotherScreen extends StatelessWidget {
  const AnotherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Another app bar "),),
      body: Center(child: GestureDetector(child: Text("another screen") , onTap: (){
        Navigator.pop(context);
      },)),
    );
  }
}
