import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_template/src/constants/_colors.dart';

import 'src/presentation/page/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: GoogleFonts.prompt().fontFamily,
          brightness: Brightness.light,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.grey,
            accentColor: ColorsConstants.primary,
            backgroundColor: Colors.white,
            errorColor: Colors.red,
          )),
      home: const HomePage(),
    );
  }
}
