import 'package:cf_companion/core/components/main_app_card.dart';
import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class HubGroupCard extends StatelessWidget {
  const HubGroupCard({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MainAppCard(
      color: AppColors.surface,
      radius: AppSizes.borderRadius14,
      border: Border.all(color: AppColors.border),
      child: child,
    );
  }
}
