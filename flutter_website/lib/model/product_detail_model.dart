class ProductDetailModel {
  String code;
  String message;

  ProductDetail data;

  ProductDetailModel(this.data);

  ProductDetailModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];

    if (json['data'] != null) {
      data = ProductDetail.fromJson(json['data']);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['code'] = code;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class ProductDetail {
  String productId;
  String desc;
  String type;
  String name;
  String imagUrl;
  String point;
  String productDetail;

  ProductDetail(
      {this.productId,
      this.desc,
      this.type,
      this.name,
      this.imagUrl,
      this.point,
      this.productDetail});

  ProductDetail.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    desc = json['desc'];
    type = json['type'];
    imagUrl = json['imagUrl'];
    name = json['name'];
    point = json['point'];
    productDetail = json['productDetail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['productId'] = this.productId;
    data['desc'] = this.desc;
    data['type'] = this.type;
    data['imagUrl'] = this.imagUrl;
    data['name'] = this.name;
    data['point'] = this.point;
    data['productDetail'] = this.productDetail;
    return data;
  }
}
