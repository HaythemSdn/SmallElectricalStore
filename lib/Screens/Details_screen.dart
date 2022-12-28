import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:store_app/Widgets/details/details_body.dart';
import 'package:store_app/Widgets/home/home_body.dart';
import 'package:store_app/constant.dart';
import 'package:store_app/models/products.dart';

class Details_screen extends StatefulWidget {
  const Details_screen({super.key});

  @override
  State<Details_screen> createState() => _Details_screenState();
}

class _Details_screenState extends State<Details_screen> {
  @override
  Widget build(BuildContext context) {
    Product prd = ModalRoute.of(context)!.settings.arguments as Product;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: Text(
          "رجوع",
          style: Theme.of(context).textTheme.bodyText2,
        ),
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          padding: EdgeInsets.only(right: kDefaultPadding),
          icon: Icon(
            Icons.arrow_back,
            color: kPrimaryColor,
          ),
          onPressed: () => {Navigator.pushReplacementNamed(context, '/home')},
        ),
      ),
      body: Details_body(
        prdct: prd,
      ),
    );
  }
}
