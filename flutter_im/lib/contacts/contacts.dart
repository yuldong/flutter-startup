import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'contact_header.dart';
import 'contact_sider_list.dart';
import 'contact_vo.dart';
import 'contact_item.dart';

class Contacts extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContactState();
  }
}

class ContactState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContactSiderList(
        items: contactData,
        headerBuilder: (context, index) {
          return Container(
            child: ContactHeader(),
          );
        },
        itemBuilder: (context, index) {
          return Container(
            color: Colors.white,
            alignment: Alignment.centerLeft,
            child: ContactItem(
              item: contactData[index],
            ),
          );
        },
        sectionBuilder: (context, index) {
          return Container(
            height: 32.0,
            padding: const EdgeInsets.only(left: 14.0),
            alignment: Alignment.centerLeft,
            child: Text(
              contactData[index].seationKey,
              style: TextStyle(fontSize: 14.0, color: Color(0xFF909090)),
            ),
          );
        },
      ),
    );
  }
}
