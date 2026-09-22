import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:cf_companion/features/onboarding/widgets/person_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: .center,
              children: [
                Gap(AppSizes.height80),
                const PersonView(),
                Gap(AppSizes.height65),
                Align(
                  alignment: AlignmentGeometry.centerRight,
                  child: Text(
                    'أدخل الـ Handle بتاعك',
                    textDirection: TextDirection.rtl,
                    style: AppTextStyles.screenTitle,
                  ),
                ),
                Gap(AppSizes.height8),
                Align(
                  alignment: AlignmentGeometry.centerRight,
                  child: Text(
                    'هنستخدمه عشان نجيب بياناتك من Codeforces، هيتخزن على جهازك بس.',
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                    style: AppTextStyles.withSize(
                      AppTextStyles.caption,
                      AppSizes.fontSize14,
                    ),
                  ),
                ),
                Gap(AppSizes.height32),
                Align(
                  alignment: AlignmentGeometry.centerRight,
                  child: Text(
                    'Codeforces handle',
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    style: AppTextStyles.caption,
                  ),
                ),
                Gap(AppSizes.height8),
                TextField(
                  decoration: InputDecoration(hint: Text('Enter your handle')),
                ),
                Gap(AppSizes.height32),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back_ios),
                  label: Text('تحقق وابدأ'),
                ),
                Gap(AppSizes.height28),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 51.5),
                  child: Text(
                    'مش عارف الـ Handle بتاعك؟ افتحه من صفحة البروفايل على Codeforces.',
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: AppTextStyles.caption,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
