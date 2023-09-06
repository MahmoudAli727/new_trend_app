import 'package:new_trend_app/helper/Api.dart';
import 'package:new_trend_app/model/product_model.dart';

class AddProduct {
  Future<product_model> addproduct({
    required String title,
    required String Price,
    required String desc,
    required String image,
    required String category,
  }) async {
    // ignore: missing_required_param
    Map<String, dynamic> data = await Api().post(
      url: "https://fakestoreapi.com/products",
      body: {
        "title": title,
        "price": Price,
        "description": desc,
        "image": image,
        "category": category
      },
    );
    return product_model.fromJson(data);
  }
}
