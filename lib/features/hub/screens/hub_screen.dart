import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:cf_companion/features/hub/widgets/hub_profile_widget.dart';
import 'package:cf_companion/features/hub/widgets/hub_settings_widget.dart';
import 'package:cf_companion/features/hub/widgets/hub_vip_teaser.dart';
import 'package:cf_companion/features/hub/widgets/three_items_widget.dart';
import 'package:cf_companion/features/hub/widgets/two_items_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HubScreen extends StatelessWidget {
  const HubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding16),
        child: Column(
          children: [
            HubProfileWidget(
              rate: 3821,
              image: '',
              color: AppColors.accent,
              handle: 'Dark_Zid',
              style: AppTextStyles.hubProfile,
              onTap: () {},
            ),
            Gap(AppSizes.height12),
            const ThreeItemsWidget(),
            Gap(AppSizes.height12),
            const TwoItemsWidget(),
            Gap(AppSizes.height12),
            const HubSettingsWidget(),
            Gap(AppSizes.height12),
            const HubVipTeaser(),
          ],
        ),
      ),
    );
  }
}
