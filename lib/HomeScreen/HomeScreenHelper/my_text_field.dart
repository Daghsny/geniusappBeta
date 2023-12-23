import 'package:flutter/material.dart';

class MyTextFiel extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final String hintText;
  final bool obscuredText;

  const MyTextFiel({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscuredText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscuredText,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              32,
            ),
          ),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(
              32,
            ),
          ),
          borderSide: BorderSide(
            color: Colors.grey.shade400,
          ),
        ),
        hintText: hintText,
        fillColor: Colors.grey.shade200,
        filled: true,
        isDense: true, // Added this
        contentPadding: const EdgeInsets.all(8),
        prefixIcon: const Icon(
          Icons.search_rounded,
          color: Colors.grey,
        ),
      ),
    );
  }
}
