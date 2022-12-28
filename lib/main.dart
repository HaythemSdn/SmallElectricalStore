// ignore_for_file: deprecated_member_use, depend_on_referenced_packages, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_app/Screens/Details_screen.dart';
import 'package:store_app/Widgets/home/home_body.dart';
import 'Screens/Home_screen.dart';
import 'constant.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/Details': (context) => const Details_screen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/home': (context) => const Home_screen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Haythem Store',
      theme: ThemeData(
        textTheme:
            GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme), //* */
        primaryColor: kPrimaryColor,
        accentColor: kPrimaryColor,
      ),
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [Locale("ar", "AE")],
      locale: Locale("ar", "AE"),
      home: Home_screen(),
    );
  }
}
