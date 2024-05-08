import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  double? width;
  CustomButton(
      {super.key, required this.child, required this.onTap, this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                colors: [Colors.red.shade800, Colors.red.shade300])),
        child: Center(child: child),
      ),
    );
  }
}
