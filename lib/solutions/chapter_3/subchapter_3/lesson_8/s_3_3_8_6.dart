import 'package:flutter/material.dart';

bool isAnagram(String word1, String word2) {
  // Lösung hier einfügen
  var word1List = word1.toLowerCase().split('');
  var word2List = word2.toLowerCase().split('');

  // Sortiere die Buchstaben für die spätere Loop um 'contains' zu vermeiden
  word1List.sort();
  word2List.sort();

  //Ein Palindrom setzt voraus dass beide Wörter die gleiche Länge haben!
  if (word1List.length != word2List.length) 
  {
    return false;
  }

  //Und für ein Palindrom müssen beide Wörte exakt dieselben Buchstaben enthalten!
  for (var i = 0; i < word1List.length; i++) 
  {
    if (word1List[i] != word2List[i]) 
    {
      return false;
    }
  }
  return true;
}

class S3386 extends StatefulWidget {
  const S3386({super.key});

  @override
  State<S3386> createState() => _S3386State();
}

class _S3386State extends State<S3386> {
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
            labelText: 'Wort 1',
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextField(
          controller: _input2Controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Wort 2',
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
            final input1 = _input1Controller.text;
            final input2 = _input2Controller.text;
            setState(() {
              output = isAnagram(input1, input2) ? 'Anagram' : 'Kein Anagram';
            });
          },
          child: const Text('Prüfe Anagram'),
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
