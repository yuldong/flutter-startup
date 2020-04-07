import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:provider/provider.dart';
// import 'dart:convert';
import '../model/product.dart';
// import '../service/http_service.dart';
import '../provider/product_provider.dart';
import '../style/index.dart';
import '../router/application.dart';
// import '../conf/configure.dart';

class ProductPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProductPageState();
  }
}

class ProductPageState extends State<ProductPage> {
  GlobalKey<RefreshIndicatorState> footerKey =
      GlobalKey<RefreshIndicatorState>();

  var scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    getProductList(false);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(
      builder: (context, ProductProvider productProvider, Widget child) {
        List<ProductModel> productList = productProvider.productList;

        if (productList.length > 0) {
          return Container(
            width: 400,
            child: EasyRefresh(
              footer: ClassicalFooter(
                  key: footerKey,
                  bgColor: Colors.white,
                  textColor: Color.fromRGBO(132, 95, 63, 1.0),
                  infoColor: Color.fromRGBO(132, 95, 63, 1.0),
                  noMoreText: '加载更多',
                  infoText: '加载中',
                  loadReadyText: '上拉加载',
                  showInfo: true),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return _listWidget(productList, index);
                },
                controller: scrollController,
                itemCount: productList.length,
              ),
              onLoad: () async {
                getProductList(true);
              },
            ),
          );
        } else {
          return Text('暂时没有数据');
        }
      },
    );
  }

  Widget _listWidget(List newList, int index) {
    ProductModel item = newList[index];
    return InkWell(
      onTap: () {
        Application.router
            .navigateTo(context, '/detail?productId=${item.productId}');
      },
      child: Container(
        color: ProductColors.bgColor,
        padding: EdgeInsets.only(top: 5, right: 5.0),
        child: Row(
          children: [
            Image.network(item.imagUrl, width: 120, height: 120),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        width: 1, color: ProductColors.divideLineColor),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item.desc,
                        maxLines: 2, overflow: TextOverflow.ellipsis),
                    Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          item.type,
                          style: TextStyle(
                              fontSize: 16.0, color: ProductColors.typeColor),
                        ),
                        item.point == null
                            ? SizedBox()
                            : Container(
                                child: Text(
                                  item.point,
                                  style: TextStyle(
                                      color: ProductColors.pointColor),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 3),
                                margin: EdgeInsets.only(left: 4),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1,
                                        color: ProductColors.pointColor)),
                              ),
                        Text(item.name, style: ProductFonts.itemNameType),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getProductList(bool isMore) async {}
}
