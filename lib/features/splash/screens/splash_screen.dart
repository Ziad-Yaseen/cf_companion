import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:cf_companion/core/routes/route_names.dart';
import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:cf_companion/features/splash/widgets/app_icon.dart';
import 'package:cf_companion/features/splash/widgets/splash_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigateToOnboardingScreen();
    super.initState();
  }

  void navigateToOnboardingScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      context.go(RouteNames.onboarding);
    }
  }

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
