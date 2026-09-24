import 'package:cf_companion/core/components/colored_container.dart';
import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_icons.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:cf_companion/features/profile/widgets/profile_attributes_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SolvedProblemsCardWidget extends StatelessWidget {
  const SolvedProblemsCardWidget({super.key});

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
                color: AppColors.success.withValues(alpha: 0.1),
                radius: AppSizes.borderRadius9999,
                padding: AppSizes.padding5,
                child: Text(
                  '+12 this week',
                  style: AppTextStyles.withColor(
                    AppTextStyles.attributeSecondary2,
                    AppColors.success,
                  ),
                ),
              ),

              ColoredContainer(
                color: AppColors.success.withValues(alpha: 0.1),
                radius: AppSizes.borderRadius8,
                padding: AppSizes.padding5,
                child: Icon(
                  AppIcons.solvedCheck,
                  color: AppColors.success,
                  size: AppSizes.fontSize20,
                ),
              ),
            ],
          ),
          const Spacer(),
          Text('1847', style: AppTextStyles.attribute),
          Gap(AppSizes.height2),
          Text('Solved Problems', style: AppTextStyles.attributeSecondary),
        ],
      ),
    );
  }
}
