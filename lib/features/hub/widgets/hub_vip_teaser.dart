import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_icons.dart';
import 'package:cf_companion/features/hub/widgets/hub_groub_card.dart';
import 'package:cf_companion/features/hub/widgets/hub_icon_avatar.dart';
import 'package:cf_companion/features/hub/widgets/hub_menu_row.dart';
import 'package:flutter/material.dart';

class HubVipTeaser extends StatelessWidget {
  const HubVipTeaser({super.key});

  @override
  Widget build(BuildContext context) {
    return const HubGroupCard(
      child: HubMenuRow(
        title: 'VIP - قريبًا',
        subtitle: 'تسجيل دخول لميزات إضافية',
        enabled: false,
        leading: HubIconAvatar(
          icon: AppIcons.vip,
          color: AppColors.warning,
          iSActive: false,
        ),
      ),
    );
  }
}
