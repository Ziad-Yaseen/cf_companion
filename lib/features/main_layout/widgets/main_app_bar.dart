import 'package:cf_companion/features/main_layout/widgets/contest_app_bar.dart';
import 'package:cf_companion/features/main_layout/widgets/hub_app_bar.dart';
import 'package:cf_companion/features/main_layout/widgets/problemset_app_bar.dart';
import 'package:cf_companion/features/main_layout/widgets/profile_app_bar.dart';
import 'package:cf_companion/features/main_layout/widgets/submetions_app_bar.dart';
import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key, required this.index});
  final int index;

  static const List<Widget> _appBars = [
    ProfileAppBar(),
    ProblemsetAppBar(),
    SubmissionsAppBar(),
    ContestAppBar(),
    HubAppBar(),
  ];

  @override
  Widget build(BuildContext context) {
    return _appBars[index];
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
