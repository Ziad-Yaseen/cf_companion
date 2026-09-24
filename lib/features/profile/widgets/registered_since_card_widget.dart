import 'package:cf_companion/core/components/colored_container.dart';
import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_icons.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:cf_companion/features/profile/widgets/profile_attributes_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RegisteredSinceCardWidget extends StatelessWidget {
  const RegisteredSinceCardWidget({super.key});

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
                  AppIcons.registeredSince,
                  color: AppColors.textDisabled,
                  size: AppSizes.fontSize20,
                ),
              ),
            ],
          ),
          const Spacer(),
          Text('Jan 2009', style: AppTextStyles.attribute),
          Gap(AppSizes.height2),
          Text('Registered Since', style: AppTextStyles.attributeSecondary),
        ],
      ),
    );
  }
}
