import 'package:flutter/material.dart';
import 'package:flutter_projects/core/helper/spacing.dart';
import 'package:flutter_projects/feature/search_doctors/ui/widgets/doctors_list_widget.dart';
import 'package:flutter_projects/feature/search_doctors/ui/widgets/search_bar.dart';

class SearchDoctors extends StatelessWidget {
  const SearchDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Search Doctors'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                verticalSpace(20),
                SearchBarWidget(),
                verticalSpace(20),
                DoctorsListWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
