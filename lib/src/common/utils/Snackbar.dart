import 'package:flutter/material.dart';

class CustomSnackbar {
  static void show(BuildContext context, String text) {
    final snackBar = SnackBar(
      content: Row(
        children: [
          Icon(Icons.info, color: Colors.white),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.blue,
      behavior: SnackBarBehavior.floating,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
