import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_icons.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const SettingsScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Align(
        alignment: Alignment.centerRight,
        child: Text('الاعدادات'),
      ),
      centerTitle: false,
      leading: const SizedBox.shrink(),
      leadingWidth: 0,
      actions: [
        IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(
            AppIcons.arrowForward,
            color: AppColors.textPrimary,
            size: AppSizes.fontSize24,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
