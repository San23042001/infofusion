import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perplexity_app/constants/colors.dart';
import 'package:perplexity_app/presentation/pages/home_page.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.submitButton),
        textTheme: GoogleFonts.interTextTheme(
          ThemeData.dark().textTheme.copyWith(
                bodyMedium: const TextStyle(
                  fontSize: 15,
                  color: AppColors.whiteColor,
                ),
              ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
