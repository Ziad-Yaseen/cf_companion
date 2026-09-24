import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:cf_companion/features/profile/widgets/contributions_card_widget.dart';
import 'package:cf_companion/features/profile/widgets/last_seen_card_widget.dart';
import 'package:cf_companion/features/profile/widgets/registered_since_card_widget.dart';
import 'package:cf_companion/features/profile/widgets/solved_problems_card_widget.dart';
import 'package:cf_companion/features/profile/widgets/verified_profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.padding16),
          child: Column(
            // mainAxisAlignment: .center,
            children: [
              const Gap(60),
              const VerifiedProfileWidget(
                color: AppColors.rankLegendaryGrandmaster,
              ),
              Gap(AppSizes.height15_5),
              GridView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: AppSizes.width16,
                  mainAxisSpacing: AppSizes.height16,
                  childAspectRatio: 165.w / 114.h,
                ),
                children: const [
                  ContributionsCardWidget(),
                  SolvedProblemsCardWidget(),
                  LastSeenCardWidget(),
                  RegisteredSinceCardWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
