import 'package:flutter/material.dart';
import 'language_item.dart';

class LanguageList extends StatefulWidget {
  const LanguageList({super.key});

  @override
  State<LanguageList> createState() => _LanguageListState();
}

class _LanguageListState extends State<LanguageList> {
  String selectedLanguage = "English"; // default selected

  final List<String> languages = [
    "Arab",
    "English",
    "France",
    "Ghana",
    "Indonesia",
    "India",
    "Italia",
    "Japan",
    "Russia",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: languages.length,
      itemBuilder: (context, index) {
        return LanguageItem(
          title: languages[index],
          groupValue: selectedLanguage,
          onChanged: (value) {
            setState(() {
              selectedLanguage = value;
            });
          },
        );
      },
    );
  }
}