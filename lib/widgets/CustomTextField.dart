import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.hintText,
      required this.onChange,
      this.textInputType = TextInputType.text,
      this.obscureText = false});
  String? hintText;
  Function(String)? onChange;
  TextInputType textInputType;
  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      obscureText: obscureText!,
      onChanged: onChange,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.black),
          label: Text(
            hintText!,
            style: TextStyle(color: Colors.black),
          ),
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
    );
  }
}
