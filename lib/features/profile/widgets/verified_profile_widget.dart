import 'package:cf_companion/core/components/main_app_card.dart';
import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:cf_companion/features/profile/widgets/profile_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class VerifiedProfileWidget extends StatelessWidget {
  const VerifiedProfileWidget({
    super.key,
    this.handle = 'Handle',
    required this.color,
  });

  final String handle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return MainAppCard(
      verticalContentPadding: AppSizes.padding20,
      horizontalContentPadding: AppSizes.padding20,
      radius: AppSizes.borderRadius14,
      border: Border.all(color: AppColors.border),
      shadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.25),
          offset: const Offset(0, 6),
          blurRadius: 16,
          spreadRadius: 0,
        ),
      ],
      color: AppColors.surface,
      child: Column(
        children: [
          Row(
            mainAxisSize: .max,
            children: [
              const Spacer(),
              Column(
                crossAxisAlignment: .end,
                children: [
                  Row(
                    children: [
                      _RankAbbreviationWidget(
                        color: color,
                        rankAbbreviation: 'LGM',
                      ),
                      Gap(AppSizes.width8),
                      Text(handle, style: AppTextStyles.handle),
                    ],
                  ),
                  Gap(AppSizes.height2),
                  Text('LegendaryGrandMaster', style: AppTextStyles.rank),
                ],
              ),
              Gap(AppSizes.width12),
              ProfileImageWidget(
                imageUrl: 'https://cloudinary-marketing-res.cloudinary.com/image/upload/w_1300/q_auto/f_auto/hiking_dog_mountain',
                color: color,
                // isVerified: false,
              ),
            ],
          ),
          Gap(AppSizes.height16),
          const Divider(),
          Gap(AppSizes.height16),
          const Row(
            mainAxisAlignment: .spaceEvenly,
            children: [
              _RateDetails('max rate', 123),
              Divider(),
              _RateDetails('current rate', 1235),
            ],
          ),
        ],
      ),
    );
  }
}

class _RankAbbreviationWidget extends StatelessWidget {
  const _RankAbbreviationWidget({
    this.rankAbbreviation = 'LGM',
    required this.color,
  });

  final String rankAbbreviation;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return MainAppCard(
      verticalContentPadding: AppSizes.padding2,
      horizontalContentPadding: AppSizes.padding8,
      radius: AppSizes.borderRadius6,
      border: Border.all(color: color.withValues(alpha: 0.4), width: 1),
      color: color.withValues(alpha: 0.15),
      child: Text(rankAbbreviation, style: AppTextStyles.abbreviation),
    );
  }
}

class _RateDetails extends StatelessWidget {
  const _RateDetails(this.title, this.rate);
  final String title;
  final int rate;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: AppTextStyles.titleRateDetails),
        Gap(AppSizes.height2),
        Text(rate.toString(), style: AppTextStyles.rate),
      ],
    );
  }
}
