// import 'package:chat_app/const.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({required this.Button, required this.onTap});
  String? Button;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.blueAccent,
        ),
        height: 50,
        width: double.infinity,
        child: Text(
          Button!,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
