import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  bool isButtonActive = false;

  var _controller = TextEditingController();

  List<String> listOfTasks = [];

  _saveList(list) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList('savedTask', list);
    return true;
  }

  _getSavedList(list) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getStringList('savedTask') != null)
      listOfTasks = prefs.getStringList('savedTask')!;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    listOfTasks.addAll([]);
    _getSavedList(listOfTasks);

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
          title: TextField(
        style:
            TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
        controller: _controller,
        decoration: InputDecoration(
          hintText: '        => Tap here to add task <=',
          suffixIcon: ElevatedButton(
            onPressed: isButtonActive
                ? () {
                    setState(() => isButtonActive = false);
                    listOfTasks.add(_controller.text);
                    _saveList(listOfTasks);
                    _controller.clear();
                  }
                : null,
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                primary: Colors.green),
            child: Text(
              'Добавить',
              style: TextStyle(fontFamily: "Dela"),
            ),
          ),
        ),
      )),
      //
      //
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/rainbow2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: listOfTasks.length,
          itemBuilder: (BuildContext context, int task) {
            return Dismissible(
              key: Key(listOfTasks[task]),
              direction: DismissDirection.endToStart,
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
      ),
    );
  }
}
