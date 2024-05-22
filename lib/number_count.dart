import 'package:flutter/material.dart';

class NumberCount extends StatefulWidget {
  const NumberCount({super.key});

  @override
  State<NumberCount> createState() => _NumberCountState();
}

int x = 0;

class _NumberCountState extends State<NumberCount> {
  @override
  void initState() {
    x = 0;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    x;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            x.toString(),
            style: const TextStyle(fontSize: 30),
          ),
          OutlinedButton(
            onPressed: () {
              setState(() {
                x = x + 2;
              });
            },
            child: const Text("Increment Count"),
          ),
        ],
      ),
    ));
  }
}
