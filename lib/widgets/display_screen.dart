import 'package:flutter/material.dart';

class DisplayPage extends StatelessWidget {
  DisplayPage({super.key, required this.value});

  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            '$value',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
      ),
    );
  }
}