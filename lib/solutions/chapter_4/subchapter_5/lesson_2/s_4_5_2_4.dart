import 'package:flutter/material.dart';

class S4524 extends StatelessWidget {
  const S4524({super.key});
  @override
  Widget build(BuildContext context) {
    return ShowHideNameWidget();
  }
}

class ShowHideNameWidget extends StatefulWidget {
  const ShowHideNameWidget({super.key});

  @override
  createState() => ShowHideNameWidgetState(); // kurz und knapp wegen Melanie. Und den Return-Type brauch ich hier nicht!
}

class ShowHideNameWidgetState extends State<ShowHideNameWidget> {
  String name = '';
  String buttonName = '';
  final String buttonText1 = 'Name anzeigen';
  final String buttonText2 = 'Name verstecken';

  @override
  void initState() {
    super.initState();
    buttonName = buttonText1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(name, style: TextStyle(fontSize: 24)),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: () => setState(() {
            if (buttonName == buttonText1) {
              name = 'DanielT';
              buttonName = buttonText2;
            } else {
              name = '';
              buttonName = buttonText1;
            }
          }),
          child: Text(buttonName),
        ),
      ],
    );
  }
}
