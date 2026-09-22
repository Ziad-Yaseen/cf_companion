import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:cf_companion/core/resources/app_resources.dart';
import 'package:flutter/material.dart';

class AppIconContainer extends StatelessWidget {
  const AppIconContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.width96,
      height: AppSizes.height96,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.borderRadius24),
        border: Border.all(color: AppColors.border.withValues(alpha: 0.4)),
        color: AppColors.surfaceElevated,
        boxShadow: [
          BoxShadow(
            color: AppColors.primarySoft,
            offset: const Offset(0, 8),
            blurRadius: 20,
          ),
        ],
      ),
      child: Image.asset(AppResources.appIcon, ),
    );
  }
}
