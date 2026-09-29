import 'package:cf_companion/core/components/main_app_card.dart';
import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class SettingsMainCard extends StatelessWidget {
  const new({super.key, required this.child, this.padding});
  final Widget child;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return MainAppCard(
      color: AppColors.surface,
      border: Border.all(color: AppColors.border),
      radius: AppSizes.borderRadius14,
      verticalContentPadding: padding == null ? AppSizes.padding16 : padding!,
      horizontalContentPadding: padding == null ? AppSizes.padding16 : padding!,
      child: child,
    );
  }
}
