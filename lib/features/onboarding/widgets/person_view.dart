import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_icons.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class PersonView extends StatelessWidget {
  const PersonView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        width: AppSizes.width100,
        height: AppSizes.height100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizes.borderRadius24),
          color: AppColors.surfaceElevated,
          border: Border.all(color: AppColors.border, width: 1),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 8),
              blurRadius: 20,
              spreadRadius: 0,
              color: AppColors.primarySoft,
            ),
          ],
        ),
        child: Icon(
          AppIcons.navProfile,
          size: AppSizes.fontSize48,
          color: AppColors.primary,
        ),
      ),
    );
  }
}
