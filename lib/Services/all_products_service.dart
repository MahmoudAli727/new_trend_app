import 'package:new_trend_app/helper/Api.dart';
import 'package:new_trend_app/model/product_model.dart';

class AllProduct {
  Future<List<product_model>> getAllProduct() async {
    // ignore: missing_required_param
    List<dynamic> data = await Api().get(
      url: "https://fakestoreapi.com/products",
    );
    List<product_model> Productlist = [];
    for (int i = 0; i < data.length; i++) {
      Productlist.add(product_model.fromJson(data[i]));
    }
    return Productlist;
  }
}
