class product_model {
  final dynamic id;
  final String title;
  final dynamic price;
  final String desc;
  final String category;
  final String image;
  final Rating_model Rating;
  product_model({
    required this.id,
    required this.title,
    required this.price,
    required this.desc,
    required this.category,
    required this.image,
    required this.Rating,
  });
  factory product_model.fromJson(jsonData) {
    return product_model(
      id: jsonData["id"],
      title: jsonData["title"],
      price: jsonData["price"],
      desc: jsonData["description"],
      category: jsonData["category"],
      image: jsonData["image"],
      Rating: Rating_model.fromJson(jsonData["rating"]),
    );
  }
}

class Rating_model {
  final dynamic rate;
  final dynamic count;
  Rating_model({
    required this.rate,
    required this.count,
  });
  // ignore: non_constant_identifier_names
  factory Rating_model.fromJson(JsonDataa) {
    return Rating_model(
      rate: ['rate'],
      count: ['count'],
    );
  }
}
