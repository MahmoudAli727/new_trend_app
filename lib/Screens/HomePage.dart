import 'package:flutter/material.dart';
import 'package:new_trend_app/Services/all_products_service.dart';
import 'package:new_trend_app/model/product_model.dart';
import 'package:new_trend_app/widgets/CustomCard.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});
  String id = "Home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "New Trend",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 65),
          child: FutureBuilder(
            future: AllProduct().getAllProduct(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<product_model> product = snapshot.data!;
                return GridView.builder(
                  itemCount: product.length,
                  clipBehavior: Clip.none,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      childAspectRatio: 1.2,
                      mainAxisSpacing: 30),
                  itemBuilder: (context, index) {
                    return CustomCard(
                      product: product[index],
                    );
                  },
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ));
  }
}
