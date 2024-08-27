import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String title;
  final String hinText;

  const InputTextField(
      {super.key, this.controller, required this.title, required this.hinText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          TextField(
            controller: controller,
            decoration: InputDecoration(hintText: hinText),
          ),
        ],
      ),
    );
  }
}
