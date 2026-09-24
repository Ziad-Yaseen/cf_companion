import 'package:cf_companion/core/components/custom_text_field.dart';
import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:cf_companion/core/routes/route_names.dart';
import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:cf_companion/features/onboarding/widgets/person_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController handleController = TextEditingController();
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
                CustomTextField(
                  hintText: 'Enter Handle',
                  controller: handleController,
                  validator: (value) {
                    if (handleController.toString().isEmpty) {
                      return 'Please Enter Handle';
                    }
                    return null;
                  },
                ),

                Gap(AppSizes.height32),
                ElevatedButton.icon(
                  onPressed: () {
                    context.pushNamed(RouteNames.mainLayout);
                    // if (formKey.currentState!.validate()) {}
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                  label: const Text('تحقق وابدأ'),
                ),
                Gap(AppSizes.height28),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 51.5 - 8),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(
                      AppSizes.borderRadius12,
                    ),
                    overlayColor: WidgetStatePropertyAll(
                      AppColors.surface.withValues(alpha: 0.2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'مش عارف الـ Handle بتاعك؟ افتحه من صفحة البروفايل على Codeforces.',
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                        style: AppTextStyles.caption,
                      ),
                    ),
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
