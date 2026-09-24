import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class RoundedBorderContainer extends StatelessWidget {
  const RoundedBorderContainer({super.key, required this.child, this.onTap});
  final Widget child;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppSizes.borderRadius12),
      child: Container(
        padding: EdgeInsets.all(AppSizes.padding9),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(AppSizes.borderRadius12),
          border: Border.all(
            color: AppColors.border.withValues(alpha: 0.7),
            width: 1,
          ),
        ),
        child: child,
      ),
    );
  }
}
