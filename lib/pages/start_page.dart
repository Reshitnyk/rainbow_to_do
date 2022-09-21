import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
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
                        text: 'M',
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
                          text: 'R',
                          style: TextStyle(
                            fontFamily: "Marker",
                            color: Colors.primaries[
                                Random().nextInt(Colors.primaries.length)],
                          )),
                      TextSpan(
                          text: 'g',
                          style: TextStyle(
                            fontFamily: "Monoton",
                            color: Colors.primaries[
                                Random().nextInt(Colors.primaries.length)],
                          )),
                      TextSpan(
                          text: 'a',
                          style: TextStyle(
                            fontFamily: "Alconica",
                            fontWeight: FontWeight.bold,
                            color: Colors.primaries[
                                Random().nextInt(Colors.primaries.length)],
                            fontStyle: FontStyle.italic,
                          )),
                      TextSpan(
                          text: 'r',
                          style: TextStyle(
                            fontFamily: "France",
                            color: Colors.primaries[
                                Random().nextInt(Colors.primaries.length)],
                          )),
                      TextSpan(
                          text: 'i',
                          style: TextStyle(
                            fontFamily: "Marker",
                            height: 3.0,
                            color: Colors.primaries[
                                Random().nextInt(Colors.primaries.length)],
                          )),
                      TextSpan(
                          text: 't',
                          style: TextStyle(
                            fontFamily: "France",
                            height: 3.0,
                            color: Colors.primaries[
                                Random().nextInt(Colors.primaries.length)],
                          )),
                      TextSpan(
                          text: 'a',
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
                // ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //         primary: Colors.primaries[
                //             Random().nextInt(Colors.primaries.length)],
                //         minimumSize: Size(100, 100),
                //         shape: (RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(90.0),
                //         ))),
                //     onPressed: () {
                //       Navigator.pushNamedAndRemoveUntil(
                //           context, '/list_page', ((route) => false));
                //     },
                //     child: Text(
                //       'Start',
                //       style: TextStyle(
                //           letterSpacing: 3,
                //           fontWeight: FontWeight.bold,
                //           fontStyle: FontStyle.italic,
                //           fontSize: 20),
                //     )),
                //
                AnimatedButton(
                  height: 70,
                  width: 200,
                  text: "Let's begin",
                  isReverse: true,
                  animatedOn: AnimatedOn.onHover,
                  selectedBackgroundColor: Colors.cyanAccent,
                  selectedTextColor: Colors.black,
                  transitionType: TransitionType.LEFT_BOTTOM_ROUNDER,
                  textStyle: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Caveat',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.primaries[Random().nextInt(
                      Colors.primaries.length,
                    )],
                  ),
                  backgroundColor: Colors.cyanAccent,
                  borderColor: Colors.cyan,
                  borderRadius: 50,
                  borderWidth: 2,
                  onPress: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/list_page', ((route) => false));
                  },
                ),
                //
                SizedBox(
                  height: 50,
                ),
                //
                RichText(
                    text: TextSpan(
                        text: 'What',
                        style: TextStyle(
                          fontFamily: "Caveat",
                          fontSize: 50,
                          color: Colors.primaries[
                              Random().nextInt(Colors.primaries.length)],
                        ),
                        children: [
                      TextSpan(
                          text: '  to  ',
                          style: TextStyle(
                            fontFamily: 'Aclonica',
                            color: Colors.primaries[
                                Random().nextInt(Colors.primaries.length)],
                          )),
                      TextSpan(
                          text: 'Do?',
                          style: TextStyle(
                            fontFamily: "France",
                            color: Colors.primaries[
                                Random().nextInt(Colors.primaries.length)],
                          )),
                    ])),
              ],
            )));
  }
}
