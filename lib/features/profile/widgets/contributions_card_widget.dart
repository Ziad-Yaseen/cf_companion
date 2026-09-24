import 'package:cf_companion/core/components/colored_container.dart';
import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_icons.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:cf_companion/features/profile/widgets/profile_attributes_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ContributionsCardWidget extends StatelessWidget {
  const ContributionsCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileAttributesCard(
      child: Column(
        crossAxisAlignment: .end,
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              ColoredContainer(
                color: AppColors.primary.withValues(alpha: 0.1),
                radius: AppSizes.borderRadius9999,
                padding: AppSizes.padding5,
                child: Text(
                  'Top 0.1',
                  style: AppTextStyles.withColor(
                    AppTextStyles.attributeSecondary2,
                    AppColors.primary,
                  ),
                ),
              ),

              ColoredContainer(
                color: AppColors.primary.withValues(alpha: 0.1),
                radius: AppSizes.borderRadius8,
                padding: AppSizes.padding5,
                child: Icon(
                  AppIcons.contribution,
                  color: AppColors.primary,
                  size: AppSizes.fontSize20,
                ),
              ),
            ],
          ),
          const Spacer(),
          Text('1847', style: AppTextStyles.attribute),
          Gap(AppSizes.height2),
          Text('Contributions', style: AppTextStyles.attributeSecondary),
        ],
      ),
    );
  }
}
