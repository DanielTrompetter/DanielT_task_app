import 'package:flutter/material.dart';

class S4533 extends StatelessWidget {
  const S4533({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: 150,
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // vertikal zentriert
        crossAxisAlignment: CrossAxisAlignment.center, // horizontal zentriert
        children: const [
          Text('App'),
          Text('Akademie')
        ],
      ),
    );
  }
}
