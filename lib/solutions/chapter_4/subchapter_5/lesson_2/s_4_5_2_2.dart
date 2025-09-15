import 'package:flutter/material.dart';

class S4522 extends StatelessWidget {
  const S4522({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyStatelessWidget();
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text('Hello Daniel'), // yeah that's me!
          SizedBox(height: 12),
          ElevatedButton(
            onPressed: null, // Noch kein Klick!!!
            child: Text('Klick mich'),
          ),
        ],
      ),
    );
  }
}
