import 'package:cf_companion/core/components/colored_container.dart';
import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_icons.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:cf_companion/features/profile/widgets/profile_attributes_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LastSeenCardWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileAttributesCard(
      child: Column(
        crossAxisAlignment: .end,
        children: [
          Row(
            mainAxisAlignment: .end,
            children: [
              ColoredContainer(
                color: AppColors.textDisabled.withValues(alpha: 0.1),
                radius: AppSizes.borderRadius8,
                padding: AppSizes.padding5,
                child: Icon(
                  AppIcons.verdictTimeLimit,
                  color: AppColors.textDisabled,
                  size: AppSizes.fontSize20,
                ),
              ),
            ],
          ),
          const Spacer(),
          Text('2h ago', style: AppTextStyles.attribute),
          Gap(AppSizes.height2),
          Text('Last Seen', style: AppTextStyles.attributeSecondary),
        ],
      ),
    );
  }
}
