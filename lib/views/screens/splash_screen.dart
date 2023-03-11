import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List SplashQuotes = [
    'The greatest glory in living lies not in never falling, but in rising every time we fall. \n\n-Nelson Mandela',
    'The way to get started is to quit talking and begin doing. \n\n-Walt Disney',
    'If life were predictable it would cease to be life, and be without flavor. \n\n-Eleanor Roosevelt'
        "Life is what happens when you're busy making other plans. \n\n-John Lennon",
    "'It is during our darkest moments that we must focus to see the light.' \n\n-Aristotle",
    "'Whoever is happy will make others happy too.' \n\n-Anne Frank",
    "You will face many defeats in life, but never let yourself be defeated. \n\n-Maya Angelou",
  ];

  List SplashColors = [
    Colors.blue.withOpacity(0.7),
    Colors.red.withOpacity(0.6),
    Colors.purple.withOpacity(0.3),
    Colors.teal.withOpacity(0.7),
    Colors.orange.withOpacity(0.7),
    Colors.lightBlue.withOpacity(0.9),
    Colors.deepOrange.withOpacity(0.4),
  ];

  @override
  void initState() {
    Duration duration = Duration(seconds: 3);
    Timer(duration, () {
      Navigator.pushReplacementNamed(context, '/');
    });
    SplashQuotes.shuffle();
    SplashColors.shuffle();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        color: SplashColors.first,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              textAlign: TextAlign.center,
              "${SplashQuotes.first}",
              style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
            ),
            Spacer(),
            Text(
              "Quotes",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
