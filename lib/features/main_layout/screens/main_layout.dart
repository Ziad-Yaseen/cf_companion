import 'package:cf_companion/core/constants/app_icons.dart';
import 'package:cf_companion/features/contests/screens/contests_screen.dart';
import 'package:cf_companion/features/hub/screens/hub_screen.dart';
import 'package:cf_companion/features/main_layout/widgets/app_bottom_nav_bar.dart';
import 'package:cf_companion/features/problemset/screens/problemset_screen.dart';
import 'package:cf_companion/features/profile/screens/profile_screen.dart';
import 'package:cf_companion/features/submissions/screens/submissions_screen.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedIndex = 0;

  static const List<Widget> _screens = [
    ProfileScreen(),
    ProblemsetScreen(),
    SubmissionsScreen(),
    ContestsScreen(),
    HubScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      // appBar: MainAppBar(
      //   title: Column(
      //     crossAxisAlignment: CrossAxisAlignment.end,
      //     children: [Text('Name'), Text('Second Text')],
      //   ),
      //   actions: [
      //     SizedBox(
      //       width: AppSizes.width50,
      //       height: AppSizes.width50,
      //       child: RoundedBorderContainer(
      //         child: Icon(
      //           Icons.arrow_back_ios_new_outlined,
      //           size: AppSizes.fontSize20,
      //           color: AppColors.textPrimary,
      //         ),
      //       ),
      //     ),
      //     Gap(AppSizes.width20),
      //   ],
      // ),
      body: IndexedStack(index: _selectedIndex, children: _screens),
      bottomNavigationBar: AppBottomNavBar(
        currentIndex: _selectedIndex,
        items: const [
          AppBottomNavItem(icon: AppIcons.navProfile, label: 'البروفايل'),
          AppBottomNavItem(icon: AppIcons.navProblems, label: 'المسائل'),
          AppBottomNavItem(icon: AppIcons.navSubmissions, label: 'الحلول'),
          AppBottomNavItem(icon: AppIcons.navContests, label: 'المسابقات'),
          AppBottomNavItem(icon: AppIcons.navMore, label: 'المتابعة'),
        ],
        onTap: (index) => setState(() => _selectedIndex = index),
      ),
    );
  }
}
