import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_icons.dart';
import 'package:cf_companion/features/hub/widgets/hub_groub_card.dart';
import 'package:cf_companion/features/hub/widgets/hub_menu_row.dart';
import 'package:cf_companion/features/hub/widgets/hub_screens_avatar.dart';
import 'package:flutter/material.dart';

class HubSettingsWidget extends StatelessWidget {
  const HubSettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return HubGroupCard(
      child: HubMenuRow(
        title: 'الإعدادات',
        leading: const HubScreensAvatar(
          color: AppColors.textSecondary,
          icon: AppIcons.settings,
        ),
        onTap: () {},
      ),
    );
  }
}
