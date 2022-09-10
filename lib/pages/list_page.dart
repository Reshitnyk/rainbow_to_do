import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  bool isButtonActive = false;

  var _controller = TextEditingController();

  List listOfTasks = [];

  @override
  void initState() {
    super.initState();
    listOfTasks.addAll(['value', 'second value']);
    _controller.addListener(() {
      final isButtonActive = _controller.text.isNotEmpty;
      setState(() {
        this.isButtonActive = isButtonActive;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          title: TextField(
            controller: _controller,
            decoration: InputDecoration(
              hintText: 'Додати задачу',
              suffixIcon: ElevatedButton(
                onPressed: isButtonActive
                    ? () {
                        setState(() => isButtonActive = false);
                        listOfTasks.add(_controller.text);
                        _controller.clear();
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                    primary: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)]),
                child: Text('Knopka'),
              ),
            ),
          )),
      //
      //
      body: ListView.builder(
        itemCount: listOfTasks.length,
        itemBuilder: (BuildContext context, int task) {
          return Dismissible(
            key: Key(listOfTasks[task]),
            direction: DismissDirection.startToEnd,
            onDismissed: (direction) {
              setState(() {
                listOfTasks.removeAt(task);
              });
            },
            child: Container(
                margin: EdgeInsets.fromLTRB(0, 2, 0, 2),
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)],
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Text(
                  listOfTasks[task],
                  style: TextStyle(fontSize: 20),
                )),
          );
        },
      ),
    );
  }
}
