import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Text(
        "Hello Flutter",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40,
          color: Colors.deepOrange[600],
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
