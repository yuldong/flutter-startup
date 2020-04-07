class ProductModel {
  String productId;
  String desc;
  String type;
  String name;
  String imagUrl;
  String point;

  ProductModel(
      {this.productId,
      this.desc,
      this.type,
      this.name,
      this.imagUrl,
      this.point});

  ProductModel.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    desc = json['desc'];
    type = json['type'];
    imagUrl = json['imagUrl'];
    name = json['name'];
    point = json['point'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['productId'] = this.productId;
    data['desc'] = this.desc;
    data['type'] = this.type;
    data['imagUrl'] = this.imagUrl;
    data['name'] = this.name;
    data['point'] = this.point;
    return data;
  }
}
