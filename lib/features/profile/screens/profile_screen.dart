import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:cf_companion/features/profile/widgets/main_attributes_grid_view.dart';
import 'package:cf_companion/features/profile/widgets/verified_profile_widget.dart';
import 'package:flutter/material.dart';
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
              const MainAttributesGridView(),
            ],
          ),
        ),
      ),
    );
  }
}
