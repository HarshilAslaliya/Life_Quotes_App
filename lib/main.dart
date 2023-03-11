import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:quotes_app/views/screens/categoriesAndAuthor.dart';
import 'package:quotes_app/views/screens/details_page.dart';
import 'package:quotes_app/views/screens/homepage.dart';
import 'package:quotes_app/views/screens/quotes_page.dart';
import 'package:quotes_app/views/screens/splash_page.dart';
import 'package:quotes_app/views/screens/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();

  bool? isVisited = prefs.getBool('Visited') ?? false;

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: (isVisited == false)?'splash_page':'splash_screen',
      routes: {
        'splash_page': (context) => SplashPage(),
        'splash_screen': (context) => SplashScreen(),
        '/': (context) => HomePage(),
        'categories':(context)=>Categories(),
        'quotes_page':(context)=>QuotesPage(),
        'details_page':(context)=>DetailsPage(),
      },
    ),
  );
}
