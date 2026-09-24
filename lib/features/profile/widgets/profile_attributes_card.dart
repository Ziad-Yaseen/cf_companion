import 'package:cf_companion/core/components/main_app_card.dart';
import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class ProfileAttributesCard extends StatelessWidget {
  const ProfileAttributesCard({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MainAppCard(
      verticalContentPadding: AppSizes.padding14,
      horizontalContentPadding: AppSizes.padding14,
      color: AppColors.surface,
      radius: AppSizes.borderRadius14,
      border: Border.all(color: AppColors.border, width: 1),
      shadow: [
        BoxShadow(
          offset: const Offset(0, 6),
          blurRadius: 16,
          spreadRadius: 0,
          color: Colors.black.withValues(alpha: 0.25),
        ),
      ],
      child: child,
    );
  }
}
