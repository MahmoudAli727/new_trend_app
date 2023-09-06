import 'package:new_trend_app/helper/Api.dart';

class AllCategory {
  Future<List<dynamic>> getCategory() async {
    // ignore: missing_required_param
    List<String> data = await Api().get(
      url: "https://fakestoreapi.com/products/categories",
    );
    return data;
  }
}
