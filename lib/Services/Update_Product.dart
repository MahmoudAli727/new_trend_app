import 'package:new_trend_app/helper/Api.dart';
import 'package:new_trend_app/model/product_model.dart';

class UpdateProduct {
  Future<product_model> updatproduct({
    required String title,
    required String Price,
    required String desc,
    required String image,
    required int id,
    required String category,
  }) async {
    print("product id = $id");
    // ignore: missing_required_param
    Map<String, dynamic> data = await Api().put(
      url: "https://fakestoreapi.com/products/$id",
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
