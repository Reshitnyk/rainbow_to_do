import 'dart:math';
import 'package:flutter/material.dart';

//Сторінка з прикладами оформлення тексту
// Приклад перший: створюємо свій віджет на основі віджету Text
class TextDecor extends StatelessWidget {
  final String text;
  final String fontFamily;
  final double fontSize;
  const TextDecor(
      {super.key,
      required this.text,
      required this.fontFamily,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          wordSpacing: 10,
          fontFamily: fontFamily,
          fontSize: fontSize,
          color: Colors.primaries[Random().nextInt(Colors.primaries.length)]),
    );
  }
}
// на основі попердньо створеного, створюємо новий який включає в собі масив з нових віджетів та повертаємо його у виді строки- грубо кажучи отримуємо щось схоже на RichText,

class FirstString extends StatelessWidget {
  const FirstString({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> firstString = [
      TextDecor(text: 'H ', fontFamily: 'France', fontSize: 30),
      TextDecor(text: 'e ', fontFamily: 'Monoton', fontSize: 35),
      TextDecor(text: 'l ', fontFamily: 'Marker', fontSize: 40),
      TextDecor(text: 'l ', fontFamily: 'France', fontSize: 35),
      TextDecor(text: 'O ', fontFamily: 'Aclonica', fontSize: 20),
    ];

    return Row(
        mainAxisAlignment: MainAxisAlignment.center, children: firstString);
  }
}

//Приклад 2 -  це оформлення через RichText із
class SecondString extends StatelessWidget {
  const SecondString({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
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
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
              )),
          TextSpan(
              text: 'R',
              style: TextStyle(
                fontFamily: "Marker",
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
              )),
          TextSpan(
              text: 'g',
              style: TextStyle(
                fontFamily: "Monoton",
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
              )),
          TextSpan(
              text: 'a',
              style: TextStyle(
                fontFamily: "Alconica",
                fontWeight: FontWeight.bold,
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                fontStyle: FontStyle.italic,
              )),
          TextSpan(
              text: 'r',
              style: TextStyle(
                fontFamily: "France",
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
              )),
          TextSpan(
              text: 'i',
              style: TextStyle(
                fontFamily: "Marker",
                height: 3.0,
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
              )),
          TextSpan(
              text: 't',
              style: TextStyle(
                fontFamily: "France",
                height: 3.0,
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
              )),
          TextSpan(
              text: 'a',
              style: TextStyle(
                fontFamily: "Marker",
                height: 3.0,
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
              )),
        ]));
  }
}

// приклад 3
class ThirdString extends StatelessWidget {
  const ThirdString({super.key});

  @override
  Widget build(BuildContext context) {
    final fontFamily = ['Dela', 'France', 'Marker'];
    final randomFont = fontFamily[Random().nextInt(fontFamily.length)];

    final List<String> thirdStringWords = ['What ', 'to', 'Do?'];
    final List<Widget> addStrings = [];
    for (var text in thirdStringWords) {
      final textWrapper = Text(
        text,
        style: TextStyle(
          fontSize: 30,
          fontFamily: randomFont,
          color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
        ),
      );
      addStrings.add(textWrapper);
    }
    return Row(
      children: addStrings,
    );
  }
}
