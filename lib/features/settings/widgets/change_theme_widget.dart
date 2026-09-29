import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_icons.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:cf_companion/features/settings/widgets/settings_icon_avatar.dart';
import 'package:cf_companion/features/settings/widgets/settings_main_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ChangeThemeWidget extends StatelessWidget {
  const ChangeThemeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsMainCard(
      
      padding: AppSizes.padding14,
      child: Row(
        children: [
          Switch(value: true, onChanged: (value) {}),
          const Spacer(),
          Text('الوضع الليلي', style: AppTextStyles.settingsBody),
          Gap(AppSizes.width10),
          const SettingsIconAvatar(color: AppColors.primary, icon: AppIcons.darkMode),
        ],
      ),
    );
  }
}
