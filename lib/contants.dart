// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = Colors.purpleAccent;
Color secondaryColor = Colors.redAccent;
double imageWidth = 200.00;

ElevatedButton customElevatedButton({
  required VoidCallback onPressed,
  required String buttonText,
  required Color buttonColor,
}) {
  return ElevatedButton(
    onPressed: onPressed,

    style: ElevatedButton.styleFrom(
      backgroundColor: buttonColor,
      minimumSize: const Size(520, 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
    child: Text(
      buttonText,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
