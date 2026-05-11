import 'package:flutter/material.dart';
import 'notification_item.dart';

class NotificationList extends StatefulWidget {
  const NotificationList({super.key});

  @override
  State<NotificationList> createState() => _NotificationListState();
}

class _NotificationListState extends State<NotificationList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        NotificationItem(title: "Notification from DocNow", value: true),
        NotificationItem(title: "Sound", value: true),
        NotificationItem(title: "Vibrate", value: true),
        NotificationItem(title: "App Updates", value: false),
        NotificationItem(title: "Special Offers", value: true),
      ],
    );
  }
}