class ProductModel {
  late String? id;
  late String? productName;
  late String? productImage;
  late int? productPrice;

  ProductModel(
      {this.id, this.productName, this.productImage, this.productPrice});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    productName = json["productName"];
    productImage = json["productImage"];
    productPrice = json["productPrice"];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data["_id"] = id;
    _data["productName"] = productName;
    _data["productImage"] = productImage;
    _data["productPrice"] = productPrice;
    return _data;
  }
}
