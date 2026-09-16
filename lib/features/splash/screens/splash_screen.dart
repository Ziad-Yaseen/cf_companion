import 'dart:developer';

import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:cf_companion/core/network/api_exception.dart';
import 'package:cf_companion/core/repositories/user_info_repository.dart';
import 'package:cf_companion/core/repositories/user_rating_repository.dart';
import 'package:cf_companion/core/services/user_info_service.dart';
import 'package:cf_companion/core/services/user_rating_service.dart';
import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:cf_companion/features/splash/widgets/app_icon.dart';
import 'package:cf_companion/features/splash/widgets/splash_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  Future<void> _testUserInfo() async {
    try {
      final user = UserInfoRepository(UserInfoService());
      final userInfo = await user.fetchUserInfo('Dark_Zid');
      log(userInfo.toString());
    } on ApiException catch (e) {
      log('API Error: ${e.message}');
    } catch (e) {
      log('Unexpected error: $e');
    }
  }

  Future<void> _testUserRating() async {
    try {
      final repo = UserRatingRepository(UserRatingService());
      final ratingHistory = await repo.fetchRatingHistory('Dark_Zid');

      log('عدد الكونتستات: ${ratingHistory.length}');
      for (final change in ratingHistory) {
        log(
          '${change.contestName} | ${change.oldRating} -> ${change.newRating} '
          '(${change.isPositive ? '+' : ''}${change.delta})',
        );
      }
    } on ApiException catch (e) {
      log('API Error: ${e.message}');
    } catch (e) {
      log('Unexpected error: $e');
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

      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await _testUserInfo();
          await _testUserRating();
        },
      ),
    );
  }
}
