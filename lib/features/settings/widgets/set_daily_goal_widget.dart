import 'package:cf_companion/core/components/main_app_card.dart';
import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_icons.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class SetDailyGoalWidget extends StatelessWidget {
  const SetDailyGoalWidget({
    super.key,
    required this.dailyGoal,
    this.onDecrement,
    this.onIncrement,
  });
  final int dailyGoal;
  final Function()? onIncrement;
  final Function()? onDecrement;

  @override
  Widget build(BuildContext context) {
    return MainAppCard(
      // verticalContentPadding: AppSizes.padding8,
      // horizontalContentPadding: AppSizes.padding12,
      color: AppColors.surfaceElevated,
      border: Border.all(color: AppColors.border),
      radius: AppSizes.borderRadius9999,
      child: Row(
        children: [
          IconButton(
            onPressed: onIncrement,
            icon: const Icon(AppIcons.increment, color: AppColors.primary),
          ),
          Text(dailyGoal.toString(), style: AppTextStyles.primary14Bold),
          IconButton(
            onPressed: onDecrement,
            icon: const Icon(AppIcons.decrement, color: AppColors.primary),
          ),
        ],
      ),
    );
  }
}
