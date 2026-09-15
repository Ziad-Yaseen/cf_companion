import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:cf_companion/features/splash/widgets/app_icon.dart';
import 'package:cf_companion/features/splash/widgets/splash_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const AppIconContainer(),
            Gap(AppSizes.height20),
            Text(
              'Delta',
              style: AppTextStyles.withSize(
                AppTextStyles.display,
                AppSizes.fontSize22,
              ),
            ),
            Gap(AppSizes.height8),
            Text(
              'Your Codeforces companion',
              style: AppTextStyles.withSize(
                AppTextStyles.bodySecondary,
                AppSizes.fontSize13,
              ),
            ),
            const Spacer(),
            const SplashProgressIndicator(),
            Gap(AppSizes.height48),
          ],
        ),
      ),
    );
  }
}
