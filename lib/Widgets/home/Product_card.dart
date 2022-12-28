import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:store_app/constant.dart';
import 'package:store_app/models/products.dart';

import '../../Screens/Details_screen.dart';

class Product_card extends StatelessWidget {
  const Product_card(
      {Key? key,
      required this.ItemIndex,
      required this.ItemProduct,
      required this.press})
      : super(key: key);
  final int ItemIndex;
  final Product ItemProduct;
  final Function press;
  // final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      height: 190,
      child: InkWell(
        onTap: () {
          press();
        },
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Container(
            height: 166,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 25,
                      color: Colors.black12)
                ]),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
              ),
              height: 160,
              width: 200,
              child: Image.asset(
                ItemProduct.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              right: 0,
              child: Container(
                height: 136,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Text(ItemProduct.title),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Text(
                        ItemProduct.subTitle,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(kDefaultPadding),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: kDefaultPadding * 1.7,
                            vertical: kDefaultPadding / 3),
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Text(
                          'السعر: \$ ${ItemProduct.price}',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    )
                  ],
                ),
              ))
        ]),
      ),
    );
  }
}
