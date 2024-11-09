import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool isObscureText;
  const AuthField(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.focusNode,
      this.isObscureText = false
      
      });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "$hintText is missing";
        }
        return null;
      },
      controller: controller,
      focusNode: focusNode,

      obscureText: isObscureText,
    );
  }
}
