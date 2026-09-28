import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_icons.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:cf_companion/features/hub/widgets/hub_groub_card.dart';
import 'package:cf_companion/features/hub/widgets/hub_menu_row.dart';
import 'package:cf_companion/features/hub/widgets/hub_screens_avatar.dart';
import 'package:flutter/material.dart';

class ThreeItemsWidget extends StatelessWidget {
  const ThreeItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return HubGroupCard(
      child: Column(
        children: [
          HubMenuRow(
            title: 'خطط التدريب',
            subtitle: 'احفظ مسائل بالـ tags وذاكر بيها',
            leading: const HubScreensAvatar(
              color: AppColors.primary,
              icon: AppIcons.trainingPlansFilled,
            ),
            onTap: () {},
          ),
          Divider(endIndent: AppSizes.width16, indent: AppSizes.width16),
          HubMenuRow(
            title: 'Pending Upsolve',
            subtitle: 'امسائل من كونتستات فاتت لسه ماحليتهاش',
            leading: const HubScreensAvatar(
              color: AppColors.warning,
              icon: AppIcons.upsolve,
            ),
            onTap: () {},
          ),
          Divider(endIndent: AppSizes.width16, indent: AppSizes.width16),
          HubMenuRow(
            title: 'تحليل الـ Tags',
            subtitle: 'شوف نقاط قوتك وضعفك بالخوارزميات',
            leading: const HubScreensAvatar(
              color: AppColors.accent,
              icon: AppIcons.tagAnalyzer,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
