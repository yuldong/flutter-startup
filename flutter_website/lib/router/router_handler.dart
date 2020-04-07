import 'package:fluro/fluro.dart';
import '../pages/index_page.dart';
import '../pages/product_detail_page.dart';

Handler rootHandler = Handler(
  handlerFunc: (context, parameters) => IndexPage(),
);

Handler detailsHandler = Handler(
  handlerFunc: (context, parameters) {
    String productId = parameters['productId'].first;
    return ProductDetailPage();
  },
);
