import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class AppBackButton extends StatelessWidget {
  const new({super.key, required this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: AppSizes.width40,
        height: AppSizes.width40,
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(AppSizes.borderRadius12),
          border: Border.all(
            color: AppColors.border.withValues(alpha: 0.7),
            width: 1,
          ),
        ),
        child: Icon(
          Icons.arrow_back_ios_rounded,
          size: AppSizes.fontSize16,
          color: AppColors.textSecondary,
        ),
      ),
    );
  }
}
