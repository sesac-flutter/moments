import 'package:flutter/material.dart';

class ObscureTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String title;
  final String hinText;

  const ObscureTextField(
      {super.key, this.controller, required this.title, required this.hinText});

  @override
  State<ObscureTextField> createState() => _ObscureTextFieldState();
}

class _ObscureTextFieldState extends State<ObscureTextField> {
  bool isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title),
          TextField(
            controller: widget.controller,
            decoration: InputDecoration(
              suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isObscured = !isObscured;
                    });
                  },
                  child: isObscured
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility)),
              hintText: widget.hinText,
            ),
            obscureText: isObscured,
          ),
        ],
      ),
    );
  }
}
