import 'package:cf_companion/core/components/main_app_card.dart';
import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class SubmissionsAppBar extends StatelessWidget {
  const SubmissionsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SafeArea(
        top: true,
        bottom: false,
        left: false,
        right: false,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: .center,
              children: [
                MainAppCard(
                  horizontalContentPadding: 10,
                  verticalContentPadding: 4,
                  color: AppColors.surface,
                  radius: AppSizes.borderRadius9999,
                  border: Border.all(color: AppColors.border),
                  child: Text(
                    '42 تسليم',
                    textDirection: TextDirection.rtl,
                    style: AppTextStyles.numberOfSubs,
                  ),
                ),
                const Spacer(),
                Text(
                  'الـ submissions',
                  textDirection: TextDirection.rtl,
                  style: AppTextStyles.screenTitle,
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
