// ignore: unused_import
// ignore_for_file: unused_label

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:odevflutter/renk.dart';

// ignore: camel_case_types
class buttonPage extends StatefulWidget {
  const buttonPage({super.key});

  @override
  State<buttonPage> createState() => _ButtonPage();
}



class _ButtonPage extends State<buttonPage> {

 List<int> myList = [];

 @override
  void initState() {
    super.initState();
    _randomList();
  
  }

  var colors = [
    Colors.red,
    Colors.yellow,
    Colors.blue,
    Colors.pink,
    Colors.brown,
    Colors.amber,
    Colors.green,
  ];
  var currentColor = Colors.black;
  var boxColor = Colors.black;

  get secCounter => null;

  get gameHistory => null;

  setRandomColor() {
    var rnd = Random().nextInt(colors.length);
    var button = Random().nextInt(colors.length);
    setState(() {
      currentColor = colors[rnd];
      boxColor = colors[button];
    });
  }

  @override
  Widget build(BuildContext context) {
    mainAxisAlignment:
    MainAxisAlignment.center;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Container(
            width: 500,
            height: 600,
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "",
                  style: TextStyle(fontSize: 70),
                ),
                const SizedBox(
                  height: 30,
                ),
             
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                           
                            padding: const EdgeInsets.fromLTRB(
                              60.0,
                              40.0,
                              60.0,
                              40.0,
                            ),
                          ),
                          onPressed: setRandomColor,
                            child:  Text(myList[0].toString()),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Expanded(
                          flex: 1,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              
                              padding: const EdgeInsets.fromLTRB(
                                  60.0, 40.0, 60.0, 40.0),
                            ),
                            onPressed: setRandomColor,
                            child:  Text(myList[1].toString()),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              
                              padding: const EdgeInsets.fromLTRB(
                                  60.0, 40.0, 60.0, 40.0),
                            ),
                            child:  Text(myList[2].toString()),
                            onPressed: () {
                              setState(() {
                              
                              });
                            }),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                           
                            padding: const EdgeInsets.fromLTRB(
                              60.0,
                              40.0,
                              60.0,
                              40.0,
                            ),
                          ),
                          onPressed: setRandomColor,
                            child:  Text(myList[3].toString()),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Expanded(
                          flex: 1,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              
                              padding: const EdgeInsets.fromLTRB(
                                  60.0, 40.0, 60.0, 40.0),
                            ),
                            onPressed: setRandomColor,
                            child:  Text(myList[4].toString()),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              
                              padding: const EdgeInsets.fromLTRB(
                                  60.0, 40.0, 60.0, 40.0),
                            ),
                            child:  Text(myList[5].toString()),
                            onPressed: () {
                              setState(() {
                              
                              });
                            }),
                      ),
                    ],
                  ),
                ),
                
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                           
                            padding: const EdgeInsets.fromLTRB(
                                60.0, 40.0, 60.0, 40.0),
                          ),
                          onPressed: () {},
                            child:  Text(myList[6].toString()),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Expanded(
                          flex: 1,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                            
                              padding: const EdgeInsets.fromLTRB(
                                  60.0, 40.0, 60.0, 40.0),
                            ),
                            onPressed: () {},
                            child:  Text(myList[7].toString()),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                           
                            padding: const EdgeInsets.fromLTRB(
                                60.0, 40.0, 60.0, 40.0),
                          ),
                          onPressed: () {},
                            child:  Text(myList[8].toString()),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                           
                            padding: const EdgeInsets.fromLTRB(
                                60.0, 40.0, 60.0, 40.0),
                          ),
                          onPressed: () {},
                            child:  Text(myList[9].toString()),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Expanded(
                          flex: 1,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                             
                              padding: const EdgeInsets.fromLTRB(
                                  60.0, 40.0, 60.0, 40.0),
                            ),
                            onPressed: () {},
                            child:  Text(myList[10].toString()),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                           
                            padding: const EdgeInsets.fromLTRB(
                                60.0, 40.0, 60.0, 40.0),
                          ),
                          onPressed: () {},
                          child:  Text(myList[11].toString()),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  
_randomList(){
  for(int i=0; i < 12; i++) {
    var randomSayi = Random().nextInt(15);
   myList.add(randomSayi);

  }
 debugPrint("Hello $myList");
}


}

