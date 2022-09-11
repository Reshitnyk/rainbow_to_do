import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/rainbow.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            //
            SizedBox(
              height: 150,
            ),
            //
            RichText(
                text: TextSpan(
                    text: 'R',
                    style: TextStyle(
                      fontFamily: "Monoton",
                      fontSize: 35,
                      letterSpacing: 10,
                      color: Colors.deepPurple,
                    ),
                    children: [
                  TextSpan(
                      text: 'a',
                      style: TextStyle(
                        fontFamily: "France",
                        color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      )),
                  TextSpan(
                      text: 'I',
                      style: TextStyle(
                        fontFamily: "Marker",
                        color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      )),
                  TextSpan(
                      text: 'n',
                      style: TextStyle(
                        fontFamily: "Monoton",
                        color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      )),
                  TextSpan(
                      text: 'B',
                      style: TextStyle(
                        fontFamily: "Alconica",
                        fontWeight: FontWeight.bold,
                        color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                        fontStyle: FontStyle.italic,
                      )),
                  TextSpan(
                      text: 'o',
                      style: TextStyle(
                        fontFamily: "France",
                        color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      )),
                  TextSpan(
                      text: 'W',
                      style: TextStyle(
                        fontFamily: "Marker",
                        height: 3.0,
                        color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      )),
                ])),
            //
            SizedBox(
              height: 50,
            ),
            //
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)],
                    minimumSize: Size(100, 100),
                    shape: (RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(90.0),
                    ))),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/list_page', ((route) => false));
                },
                child: Text(
                  'Start',
                  style: TextStyle(
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 20),
                )),
            //
            SizedBox(
              height: 50,
            ),
            //
            RichText(
                text: TextSpan(
                    text: 'To',
                    style: TextStyle(
                      fontFamily: "Marker",
                      fontSize: 35,
                      color: Colors
                          .primaries[Random().nextInt(Colors.primaries.length)],
                    ),
                    children: [
                  TextSpan(
                      text: '-',
                      style: TextStyle(
                        color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      )),
                  TextSpan(
                      text: 'Do',
                      style: TextStyle(
                        fontFamily: "France",
                        color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      )),
                ])),
          ],
        ));
  }
}
