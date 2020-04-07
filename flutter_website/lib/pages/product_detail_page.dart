import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_website/model/product_detail_model.dart';
import 'package:flutter_website/provider/product_detail_provider.dart';
import 'package:provider/provider.dart';

class ProductDetailPage extends StatefulWidget {
  final String productId;
  ProductDetailPage(this.productId);
  @override
  State<StatefulWidget> createState() {
    return ProductDetailPageState();
  }
}

class ProductDetailPageState extends State<ProductDetailPage> {
  @override
  void initState() {
    super.initState();
    getProductDetail();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ProductDetailProvider productDetailProvider, child) {
        ProductDetail detail = productDetailProvider.productDetail;
        if (detail != null) {
          return Scaffold(
            appBar: AppBar(
              title: Text('产品详情'),
            ),
            body: ListView(
              children: [
                Html(
                  data: detail.productDetail,
                )
              ],
            ),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              title: Text('产品详情'),
            ),
            body: Center(),
          );
        }
      },
    );
  }

  void getProductDetail() async {}
}
