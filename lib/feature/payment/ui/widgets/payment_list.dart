import 'package:flutter/material.dart';
import 'payment_item.dart';

class PaymentList extends StatelessWidget {
  const PaymentList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  [
        PaymentItem(title: "Paypal", number: "37842", iconPath: "assets/svgs/paypal_icon.svg"),
        PaymentItem(title: "Master Card", number: "42482", iconPath: "assets/svgs/master_card_icon.svg"),
        PaymentItem(title: "Apple Pay", number: "37476", iconPath: "assets/svgs/apple_pay_icon.svg"),
        PaymentItem(title: "Payoneer", number: "57643", iconPath: "assets/svgs/payoneer_icon.svg"),
        PaymentItem(title: "Dana", number: "10094", iconPath: "assets/svgs/dana_pay_icon.svg"),
      ],
    );
  }
}