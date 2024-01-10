import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KAppTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: TextTheme(
        headlineMedium: GoogleFonts.montserrat(
          color: Colors.black87,
          fontSize: 32,
          fontWeight: FontWeight.bold
        ),
        headlineSmall: GoogleFonts.montserrat(
          color: Colors.black87,
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),
        bodyMedium: GoogleFonts.poppins(
          color: Colors.black54,
          fontSize: 18
        ),
        bodySmall: GoogleFonts.poppins(
          color: Colors.black54,
          fontSize: 16
        )
      )
  );
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: TextTheme(
          headlineMedium: GoogleFonts.montserrat(
              color: Colors.white70
          ),
          bodyMedium: GoogleFonts.poppins(
          color: Colors.white60,
              fontSize: 24
          )
      )
  );
}
