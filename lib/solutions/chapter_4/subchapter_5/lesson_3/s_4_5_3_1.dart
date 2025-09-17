import 'package:flutter/material.dart';

class S4531 extends StatelessWidget {
  const S4531({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyContainer(color: Colors.blueGrey),
        MyContainer(color: Colors.blue),
        MyContainer(color: Colors.cyan),
      ],
    );
  }
}

class MyContainer extends StatelessWidget {
  final Color color;
  const MyContainer({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(width: 100, height: 100, color: color);
  }
}
