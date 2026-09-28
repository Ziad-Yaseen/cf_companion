import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_icons.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:cf_companion/features/hub/widgets/hub_groub_card.dart';
import 'package:cf_companion/features/hub/widgets/hub_menu_row.dart';
import 'package:cf_companion/features/hub/widgets/hub_screens_avatar.dart';
import 'package:flutter/material.dart';

class TwoItemsWidget extends StatelessWidget {
  const TwoItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return HubGroupCard(
      child: Column(
        children: [
          HubMenuRow(
            title: 'قارن مع صديق',
            subtitle: 'اقارن نفسك بأي حساب تاني على الموقع',
            leading: const HubScreensAvatar(
              color: AppColors.primary,
              icon: AppIcons.compareHandles,
            ),
            onTap: () {},
          ),
          Divider(endIndent: AppSizes.width16, indent: AppSizes.width16),
          HubMenuRow(
            enabled: false,
            title: 'وضع الفريق',
            subtitle: 'قريبًا: تابع فريقك مع بعض',
            badge: 'قريبا',
            leading: const HubScreensAvatar(
              color: AppColors.textSecondary,
              icon: AppIcons.teamMode,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
