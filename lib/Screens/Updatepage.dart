import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:new_trend_app/Services/Update_Product.dart';
import 'package:new_trend_app/model/product_model.dart';
import 'package:new_trend_app/widgets/CustomButton.dart';
import 'package:new_trend_app/widgets/CustomTextField.dart';

class UpdatePage extends StatefulWidget {
  UpdatePage({super.key});
  static String id = "Update";
  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  String? ProName, price, desc, image;
  @override
  Widget build(BuildContext context) {
    bool isloading = false;

    // ignore: unused_local_variable
    product_model product =
        ModalRoute.of(context)!.settings.arguments as product_model;
    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            "Update Product",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              child: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.grey.withOpacity(0.5),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                CustomTextField(
                  hintText: "Product Name",
                  onChange: (data) {
                    ProName = data;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                    hintText: "description",
                    onChange: (data) {
                      desc = data;
                    }),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                    textInputType: TextInputType.number,
                    hintText: "Price",
                    onChange: (data) {
                      price = data;
                    }),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                    hintText: "image",
                    onChange: (data) {
                      image = data;
                    }),
                const SizedBox(
                  height: 120,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomButton(
                      Button: "Update",
                      onTap: () async {
                        try {
                          await UpdateProductMethod(isloading, product);
                          print("success");
                        } catch (e) {
                          print(e.toString());
                        }
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> UpdateProductMethod(
      bool isloading, product_model product) async {
    isloading = true;
    setState(() {});
    await UpdateProduct().updatproduct(
        id: product.id,
        title: ProName == null ? product.title : ProName!,
        Price: price == null ? product.price.toString() : price!,
        desc: desc == null ? product.desc : desc!,
        image: image == null ? product.image : image!,
        category: product.category);
    isloading = false;
    setState(() {});
    Navigator.pop(context);
  }
}
