import 'package:cf_companion/core/components/main_back_button.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key, required this.title, required this.actions});
  final Widget title;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: AppSizes.width60,
      leading: const Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: MainBackButton(),
      ),
      title: Align(alignment: Alignment.centerRight, child: title),
      titleSpacing: AppSizes.width20,
      centerTitle: false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
