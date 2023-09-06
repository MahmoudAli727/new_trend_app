import 'package:flutter/material.dart';
import 'package:new_trend_app/Screens/Updatepage.dart';
import 'package:new_trend_app/model/product_model.dart';

// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  CustomCard({
    required this.product,
  });
  product_model product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdatePage.id, arguments: product);
      },
      child: Stack(clipBehavior: Clip.none, children: [
        Container(
          height: 90,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 5,
              spreadRadius: 0,
              offset: Offset(1, 1),
            ),
          ]),
          alignment: Alignment.center,
          child: Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      product.title.substring(0, 6),
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        r"$" "${product.price}",
                        style: TextStyle(fontSize: 16),
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: -50,
          right: 30,
          child: Image.network(
            product.image,
          ),
          width: 60,
          height: 100,
        ),
      ]),
    );
  }
}
