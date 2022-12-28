import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_app/Widgets/home/home_body.dart';
import 'package:store_app/constant.dart';

class Home_screen extends StatelessWidget {
  const Home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: HomeAppBar(),
      body: home_body(),
    );
  }
}

AppBar HomeAppBar() {
  return AppBar(
    backgroundColor: kPrimaryColor,
    title: Text(
      "مرحبا بكم في متجر الالكترونيات",
      style: GoogleFonts.getFont('Almarai'),
    ),
    centerTitle: false,
    elevation: 0,
    actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
  );
}
