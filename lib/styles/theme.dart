import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme = ThemeData(
  textTheme: TextTheme(
    headlineMedium: GoogleFonts.vt323(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headlineLarge: GoogleFonts.vt323(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.5,
      color: Colors.white,
    ),
    bodyMedium: GoogleFonts.urbanist(
      fontSize: 15,
      color: Colors.black,
    ),
    bodyLarge: GoogleFonts.openSans(
      fontSize: 15,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side:const BorderSide(color: Colors.blue, width: 1)),
      ),
    ),
  ),
);
