import 'package:flutter/material.dart';
import 'security_item.dart';

class SecurityList extends StatefulWidget {
  const SecurityList({super.key});

  @override
  State<SecurityList> createState() => _SecurityListState();
}

class _SecurityListState extends State<SecurityList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  [
        SecurityItem(title: "Remember password", hasSwitch: true, value: true),
        SecurityItem(title: "Face ID", hasSwitch: true, value: false),
        SecurityItem(title: "PIN", hasSwitch: true, value: true),
        SecurityItem(title: "Google Authenticator", hasSwitch: false),
      ],
    );
  }
}