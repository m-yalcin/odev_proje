import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class GridVievPage extends StatefulWidget {
  GridVievPage({Key? key}) : super(key: key);

  @override
  _GridVievPageState createState() => _GridVievPageState();
}

class _GridVievPageState extends State<GridVievPage> {
  final ScrollController _controller = ScrollController();

  List<int> myList = [];
  int? _targetNumber;

  @override
  void initState() {
    super.initState();
    _randomList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('SAYI OYUNU')),
      ),
      body: Column(children: [
        _buildTargetNumber(),
        _buildRandomNumbers(),
      ]),
    );
  }

  Widget _buildRandomNumbers() {
    return Expanded(
      child: Container(
          padding: context.paddingMedium,
          child: GridView.builder(
            itemCount: 12,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _changeTargetNumber();
                    _checkNumber(index);

                    debugPrint("index: ${myList[index]}");
                  });
                },
                child: Card(
                    color: context.randomColor,
                    child: Center(
                        child: Text(
                      myList[index].toString(),
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ))),
              );
            },
          )),
    );
  }

  Widget _buildTargetNumber() {
    _targetNumber = targetNumber;

    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Container(
          decoration: BoxDecoration(
              borderRadius: context.lowBorderRadius,
              color: Colors.blue.withAlpha(100)),
          width: context.highValue * 2,
          height: context.highValue,
          child: Padding(
            padding: context.paddingLow,
            child: Center(
                child: Text(
              _targetNumber.toString(),
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            )),
          )),
    );
  }

  _randomList() {
    for (int i = 0; i < 12; i++) {
      var randomNumber = Random().nextInt(15);
      myList.add(randomNumber);
    }
    debugPrint("Hello $myList");
  }

  _changeTargetNumber() {
    targetNumber;
  }

  _checkNumber(int indexNumber) {
    var isTrueNumber = false;

    if (myList[indexNumber] == _targetNumber) {
      isTrueNumber = true;
      _showDialog(isTrueNumber);
      debugPrint("doğru");
    } else {
      _showDialog(isTrueNumber);
      isTrueNumber = false;
      debugPrint("yanlış");
    }
  }

  _showDialog(bool controlNumber) {
    showDialog(
        barrierColor: controlNumber
            ? Colors.green.withAlpha(100)
            : Colors.red.withAlpha(100),
        context: context,
        builder: (
          BuildContext context,
        ) {
          return Icon(size: 100, controlNumber ? Icons.check : Icons.close);
        });
  }


  int get randomNumber => Random().nextInt(11);
  int get targetNumber => myList[randomNumber];
}
