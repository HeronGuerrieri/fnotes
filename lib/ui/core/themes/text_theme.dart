import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  // Função estática para fornecer o tema de texto
  static TextTheme get textTheme => TextTheme(
        headlineLarge: _headlineLarge,
        headlineSmall: _headlineSmall,
        titleMedium: _titleMedium,
        bodyLarge: _bodyLarge,
        bodyMedium: _bodyMedium,
        bodySmall: _bodySmall,
        labelSmall: _labelSmall,
        labelLarge: _labelLarge,
      );

  // Estilos individuais
  static final TextStyle _headlineLarge = GoogleFonts.nunito(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    color: Colors.black87,
  );

  static final TextStyle _headlineSmall = GoogleFonts.nunito(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: Colors.black87,
  );

  static final TextStyle _titleMedium = GoogleFonts.nunito(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.black87,
  );

  static final TextStyle _bodyLarge = GoogleFonts.nunito(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Colors.black87,
    height: 1.5,
  );

  static final TextStyle _bodyMedium = GoogleFonts.nunito(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.black87,
    height: 1.5,
  );

  static final TextStyle _bodySmall = GoogleFonts.nunito(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle _labelSmall = GoogleFonts.nunito(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle _labelLarge = GoogleFonts.nunito(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
}
