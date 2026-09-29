import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:cf_companion/features/settings/widgets/settings_main_card.dart';
import 'package:cf_companion/features/settings/widgets/share_opinion_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AboutAppSection extends StatelessWidget {
  const AboutAppSection({super.key, required this.appVersion});
  final String appVersion;

  @override
  Widget build(BuildContext context) {
    return SettingsMainCard(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                appVersion,
                style: AppTextStyles.withSize(
                  AppTextStyles.currentHandle,
                  AppSizes.fontSize13,
                ),
              ),
              const Spacer(),
              Text('الإصدار', style: AppTextStyles.currentHandle),
            ],
          ),
          Gap(AppSizes.height14),
          const Divider(),
          Gap(AppSizes.height14),
          const ShareOpinionWidget(),
        ],
      ),
    );
  }
}
