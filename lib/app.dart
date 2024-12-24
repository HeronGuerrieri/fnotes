import 'package:f_notes/ui/core/themes/color_theme.dart';
import 'package:f_notes/ui/core/themes/text_theme.dart';
import 'package:f_notes/ui/core/ui/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FNotes',
        theme: ThemeData(
          colorScheme: MaterialTheme.darkScheme(),
          textTheme: AppTextTheme.textTheme,
          fontFamily: GoogleFonts.nunito().fontFamily,
        ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: [
          Locale('pt'), // Portuguese
          Locale('en'), // English
          Locale('it') // Italian
        ],

        home: BaseScreen());
  }
}
