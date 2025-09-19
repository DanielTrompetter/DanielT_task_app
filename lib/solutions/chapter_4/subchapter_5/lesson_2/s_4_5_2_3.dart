import 'package:flutter/material.dart';

class S4523 extends StatelessWidget {
  const S4523({super.key});
  @override
  Widget build(BuildContext context) {
    return MyNameWidget();
  }
}

class MyNameWidget extends StatefulWidget {
  const MyNameWidget({super.key});

  @override
  createState() => MyNameWidgetState(); // kurz und knapp wegen Melanie. Und den Return-Type brauch ich hier nicht!
}

class MyNameWidgetState extends State<MyNameWidget> {
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(name, style: TextStyle(fontSize: 24)),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: () => setState(() { 
            name = 'DanielT'; 
          }),  
          child: Text('Name anzeigen'),
        ),
      ],
    );
  }
}
