import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_icons.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:cf_companion/features/settings/widgets/default_reminder_widget.dart';
import 'package:cf_companion/features/settings/widgets/set_daily_goal_widget.dart';
import 'package:cf_companion/features/settings/widgets/settings_icon_avatar.dart';
import 'package:cf_companion/features/settings/widgets/settings_main_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RemindersAndGoalsWidget extends StatelessWidget {
  const RemindersAndGoalsWidget({
    super.key,
    this.onDefaultReminderTaped,
    this.onDecrement,
    this.onIncrement,
  });
  final Function()? onDefaultReminderTaped;
  final Function()? onIncrement;
  final Function()? onDecrement;

  @override
  Widget build(BuildContext context) {
    return SettingsMainCard(
      padding: AppSizes.padding14,
      child: Column(
        children: [
          Row(
            children: [
              DefaultReminderWidget(onTap: onDefaultReminderTaped),
              const Spacer(),
              Text('التذكير الافتراضي', style: AppTextStyles.settingsBody),
              Gap(AppSizes.width10),
              const SettingsIconAvatar(
                color: AppColors.primary,
                icon: AppIcons.reminderOff,
              ),
            ],
          ),
          Gap(AppSizes.height14),
          const Divider(),
          Gap(AppSizes.height14),
          Row(
            children: [
              SetDailyGoalWidget(
                dailyGoal: 3,
                onIncrement: onIncrement,
                onDecrement: onDecrement,
              ),
              const Spacer(),
              Text('الهدف اليومي', style: AppTextStyles.settingsBody),
              Gap(AppSizes.width10),
              const SettingsIconAvatar(
                color: AppColors.success,
                icon: AppIcons.dailyGoal,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
