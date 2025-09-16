import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';

/// This functions tries to hack a 4 digit PIN.
/// It returns the PIN as a string.
String hackPin() {
  // Lösung hier einfügen
  String pin = "";
  Random random = Random();
  do
  {
    int value = random.nextInt(10000)-1;  // -1 damit 9999 auch möglich ist
    pin = value.toString();
    while (pin.length < 4) 
    {
      pin = "0" + pin; // add leading zeros
    }
  }while(!_isPinCorrect(pin));
  return pin;
}

// ignore: unused_element
bool _isPinCorrect(String input) {
  final hashedInput = sha1.convert(utf8.encode(input)).toString();
  return hashedInput == _secretPinHashed;
}

const String _secretPinHashed = '2a0ebfb7c7ecc618493f4f6dfae77d2bccddc7ba';

class S3387 extends StatefulWidget {
  const S3387({super.key});

  @override
  State<S3387> createState() => _S3387State();
}

class _S3387State extends State<S3387> {
  String? output;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          output?.toString() ?? '',
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(
          height: 32,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              output = "Die PIN lautet: ${hackPin()}.";
            });
          },
          child: const Text('Hacke PIN'),
        ),
      ],
    );
  }
}
