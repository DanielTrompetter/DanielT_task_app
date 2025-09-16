import 'package:flutter/material.dart';

int multiplyAdvanced(int a, int b) {
  // Lösung hier einfügen
  if (a==0 || b == 0) 
    return 0;

  bool add = (a>0 && b<0) || (a<0 && b>0) ? false : true; // Vorzeichen prüfen
  int result = 0;
  for(int i=0; i < a.abs(); i++) 
  {
    result = add? result + b.abs() : result - b.abs();
  }
  return result;
}

class S3388 extends StatefulWidget {
  const S3388({super.key});

  @override
  State<S3388> createState() => _S3388State();
}

class _S3388State extends State<S3388> {
  final TextEditingController _input1Controller = TextEditingController();
  final TextEditingController _input2Controller = TextEditingController();
  String? output;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _input1Controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Zahl 1',
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextField(
          controller: _input2Controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Zahl 2',
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Text(
          output?.toString() ?? '',
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(
          height: 32,
        ),
        ElevatedButton(
          onPressed: () {
            final input1 = int.tryParse(_input1Controller.text);
            final input2 = int.tryParse(_input2Controller.text);
            if (input1 == null || input2 == null) {
              setState(() {
                output = null;
              });
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Bitte 2 Zahlen eingeben.'),
                ),
              );
              return;
            }
            setState(() {
              output = multiplyAdvanced(input1, input2).toString();
            });
          },
          child: const Text('Multipliziere'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _input1Controller.dispose();
    super.dispose();
  }
}
