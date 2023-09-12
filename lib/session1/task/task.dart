import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskScreen extends StatefulWidget {
  TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> with WidgetsBindingObserver {
  int count1 = 0, count2 = 0;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print("new state is ${state.name}");


  }

  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task Screen"),
        actions: [Icon(Icons.sports_baseball)],
        leading: Icon(Icons.arrow_back),
      ),
      body: Stack(
        children: [
          Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Team1",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("$count1  :  $count2"),
                    const Text(
                      "Team2",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),

            Row(
              mainAxisAlignment:  MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    count1++;
                    if((count1-count2).abs()== 2 )flag = false ;

                    setState(() {

                    });
                  },
                  child: Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(child: Text("Add 1")),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    count2++;
                    if((count1-count2).abs()== 2 )flag = false ;

                    setState(() {

                    });
                  },
                  child: Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(child: Text("Add 2")),
                  ),
                )
              ],)
          ],
        ),
          if(flag == false)Container(width: double.infinity, height: double.infinity, color: Colors.black.withOpacity(.9),),
          if(flag == false) Center(
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),

                backgroundColor: Colors.red,
                title: const Text("winner" , style: TextStyle(fontWeight: FontWeight.bold),),
                content: count1 > count2 ? const Center(child: Text("Team1 is the winner ")) : const Center(child: Text("Team2 is the winner ")),
                actions: [
                  GestureDetector(onTap: (){
                    flag = true ;
                    count1 = 0 ; count2=  0 ;
                    setState(() {

                    });
                  }, child: Padding(
                    padding: const EdgeInsets.only(left: 15 , right: 15),
                    child: Text("ok" , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold),),
                  ))
                ],
              ),
            ),
          ),
        ]

      ),
    ) ;
  }
}
