import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '../pages/index_page.dart';
import '../pages/product_detail_page.dart';

Handler rootHandler = Handler(
  handlerFunc: (context, parameters) => {
    return IndexPage();
  },
);

Handler detailsHandler = Handler(
  handlerFunc: (context, parameters) => {
    String productId = parameters['productId'].first;
    return ProductDetailPage(productId);
  },
);
