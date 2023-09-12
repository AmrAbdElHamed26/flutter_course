import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'another_screen.dart';

// gestures => action
class MyHomePage extends StatefulWidget {
   MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// widget have (child , children )
  /// material app , scaffold , app bar , text , gestures , container , box decoration , padding , center
  /// Column ,Row , single child scroll view (scroll direction with row ) , Icon(Icons.)
   /// stateful , setstate , inint state , createState()
  ///
  /// Navigator.push(MatirealPageRoute(builder())) , Navigator.pop()
  ///
  /// stack , Positioned
  int counter = 0 ;

  bool showDialog = false  ;

  @override
  Widget build(BuildContext context) { // state -> changed , build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "first app",
        ),
        leading: GestureDetector(child : Container (width: 10, height: 10 ),onTap: (){
          print("hello");
        },),
        actions: [
          GestureDetector(child: Icon(Icons.access_alarms_rounded), onTap: (){
            print("ring");
          },),
        ],
      ),
      body: Center(
        child: Stack(
          children: [

            if(showDialog == false)Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(counter.toString()),
                GestureDetector(child: const Text("Press Here") , onTap: (){
                  counter++;

                  if(counter%4==0)showDialog= true;

                  setState(() {

                  });
                },),
              ],
            ),

            // solve error
            if(showDialog == true )AlertDialog(
              title: Text("Ask Question ? "),
              content: Text("Do You Need To Navigate ? "),
              actions: [
                GestureDetector(child: Text("Yes") , onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> AnotherScreen()));
                },),
                GestureDetector(child: Text("No") , onTap: (){
                  showDialog = false;
                  setState(() {

                  });
                },),
              ],
            ),

          ],
        ),
      )
    );
  }
}

// main , cross
