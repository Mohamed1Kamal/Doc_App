import 'package:flutter/material.dart';
import 'package:flutter_projects/core/helper/spacing.dart';
import 'package:flutter_projects/core/theming/colors.dart';
import 'package:flutter_projects/feature/home/ui/widgets/home_screen.dart';
import 'package:flutter_projects/feature/profile/ui/profile_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BottomAppBarScreen extends StatefulWidget {
  const BottomAppBarScreen({super.key});

  @override
  State<BottomAppBarScreen> createState() => _MainScreanState();
}

class _MainScreanState extends State<BottomAppBarScreen> {
  int  _selectedIndex = 0;
  final List<Widget> _pages = [
    HomeScreen(), // Home
    Center(child: Text("Chat")), // Chat
    Center(child: Text("Calendar")), // Calendar
    ProfileScreen(), // Profile
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.97),
      floatingActionButton:  SizedBox(
        height: 70.h,
        width: 70.w,
        child: FloatingActionButton(
          onPressed: () {
            // Action for the search button
          },
          backgroundColor: AppColors.mainBlue, 
          shape:   RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(27), 
          ),
          elevation: 2,
          child:  SvgPicture.asset(
            "assets/svgs/search_icon.svg", 
            height: 24.h,
            width: 24.w,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 10, 
        child: Container(
          height: 70.h,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // --- Left Side Icons ---
              Row(
                children: [
                  _buildNavItem(
                    iconPath: 'assets/svgs/home_icon.svg',
                    index: 0,
                    isActive: _selectedIndex == 0,
                  ),
                  horizontalSpace(30),
                  _buildChatIcon(
                    isActive: _selectedIndex == 1,
                  ), // Custom widget for chat icon with red dot
                ],
              ),
              // --- Right Side Icons ---
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildNavItem(
                    iconPath: 'assets/svgs/calendar_icon.svg',
                    index: 2,
                    isActive: _selectedIndex == 2,
                  ),
                  horizontalSpace(30),
                  _buildProfileIcon(
                    isActive: _selectedIndex == 3,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      body: _pages[_selectedIndex], // Placeholder for the main content of the screen
    );
  }
  Widget _buildNavItem({
  required String iconPath,
  required int index,
  required bool isActive,
}) {
  return InkWell(
    customBorder: const CircleBorder(),
    onTap: () {
      setState(() {
        _selectedIndex = index;
      });
    },
    child: Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isActive 
            ? const Color(0xFFEAF2FF) // light blue background
            : Colors.transparent,
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(
        iconPath,
        height: 26,
        width: 26,
        colorFilter: ColorFilter.mode(
          isActive ? const Color(0xFF247CFF) : Colors.black87,
          BlendMode.srcIn,
        ),
      ),
    ),
  );
}

  Widget _buildChatIcon({required bool isActive}) {
    return InkWell(
    customBorder: const CircleBorder(),
      onTap: () {
        setState(() {
          _selectedIndex = 1;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration:  BoxDecoration(
        color: isActive 
            ? const Color(0xFFEAF2FF) // light blue background
            : Colors.transparent,
        shape: BoxShape.circle,
      ),
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            SvgPicture.asset(
              'assets/svgs/message_icon.svg',
              height: 28,
              width: 28,
              color: _selectedIndex == 1 ? const Color(0xFF247CFF) : Colors.black87,
            ),
            // The Red Dot
            Positioned(
              right: -2,
              top: -2,
              child: Container(
                height: 12,
                width: 12,
                decoration: BoxDecoration(
                  color: const Color(0xFFFF4D67), // Red color
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2), // White border
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileIcon({required bool isActive}) {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: () {
        setState(() {
          _selectedIndex = 3;
        });
      },
      child: Container(
        padding:  EdgeInsets.all( 10.0.h),
        decoration:  BoxDecoration(
        color: isActive 
            ? const Color(0xFFEAF2FF) // light blue background
            : Colors.transparent,
        shape: BoxShape.circle,
      ),
        child:  Image.asset(
            'assets/images/profile_image.png'),
      ),
    );
  }
}