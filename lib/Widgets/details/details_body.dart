import 'package:flutter/material.dart';
import 'package:store_app/Widgets/details/Image_box.dart';
import 'package:store_app/constant.dart';
import 'package:store_app/models/products.dart';

import 'ColorDot.dart';

class Details_body extends StatelessWidget {
  const Details_body({super.key, required this.prdct});
  final Product prdct;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
            decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(22),
                    bottomRight: Radius.circular(22))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: ImageBox(
                    size: size,
                    image: prdct.image,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ColorDot(
                        color: kTextLightColor,
                        isSelected: false,
                      ),
                      ColorDot(
                        color: Colors.blue,
                        isSelected: true,
                      ),
                      ColorDot(
                        color: Colors.red,
                        isSelected: false,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                  child: Text(
                    prdct.title,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                Text(
                  'السعر: \$ ${prdct.price}',
                  style: TextStyle(
                    color: kSecondaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 28,
                  ),
                ),
                SizedBox(
                  height: kDefaultPadding,
                )
              ],
            )),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding ,
              horizontal: kDefaultPadding ),
          child: Text(
            prdct.description,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              wordSpacing: 2,

            ),
            textScaleFactor: 1.1,
          
          ),
        )
      ],
    );
  }
}
