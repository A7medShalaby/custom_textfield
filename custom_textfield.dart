// ignore_for_file: unused_field

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Icon suffixIcon;
  final Icon prefixIcon;
  final TextInputType textInputType;
  CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.suffixIcon,
    required this.prefixIcon,
    required this.textInputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.deepPurple),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: Colors.deepPurple,
            width: 2,
          ),
        ),
        suffixIcon: suffixIcon,
        prefixIcon: suffixIcon,
      ),
      controller: controller,
      keyboardType: textInputType,
      validator: (value) {
        return null;
      },
    );
  }
}
