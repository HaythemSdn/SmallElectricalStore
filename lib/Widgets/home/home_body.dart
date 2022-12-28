import 'package:flutter/scheduler.dart';
import 'package:store_app/Screens/Details_screen.dart';
import 'package:store_app/Widgets/home/Product_card.dart';
import 'package:store_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:store_app/models/products.dart';

import '../details/details_body.dart';

class home_body extends StatefulWidget {
  const home_body({super.key});

  @override
  State<home_body> createState() => _home_bodyState();
}

class _home_bodyState extends State<home_body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                      //* */
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                ),
                ListView.builder(
                    itemCount: products.length,
                    itemBuilder: ((context, index) => Product_card(
                          ItemIndex: index,
                          ItemProduct: products[index],
                          press: () {
                            Product prdct = products[index];
                            Navigator.pushReplacementNamed(context, '/Details',
                                arguments: Product(
                                  id: prdct.id,
                                  image: prdct.image,
                                  subTitle: prdct.subTitle,
                                  title: prdct.title,
                                  price: prdct.price,
                                  description: prdct.description,
                                ));
                          },
                        )))
              ],
            ),
          )
        ],
      ),
    );
  }
}
