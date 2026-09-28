import 'package:cf_companion/core/components/main_app_card.dart';
import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_icons.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:cf_companion/features/settings/widgets/settings_category_title.dart';
import 'package:cf_companion/features/settings/widgets/settings_screen_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SettingsScreenAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: .end,
            children: [
              Gap(AppSizes.height4),
              const SettingsCategoryTitle(title: 'الحساب'),
              Gap(AppSizes.height10),
              MainAppCard(
                color: AppColors.surface,
                border: Border.all(color: AppColors.border),
                radius: AppSizes.borderRadius14,
                verticalContentPadding: AppSizes.padding16,
                horizontalContentPadding: AppSizes.padding16,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: AppSizes.width8,
                          width: AppSizes.width8,
                          decoration: const BoxDecoration(
                            color: AppColors.error,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Gap(AppSizes.width6),
                        Text('tourist', style: AppTextStyles.hubProfile),
                        const Spacer(),
                        Text(
                          'الـ Handle الحالي',
                          textDirection: TextDirection.rtl,
                          style: AppTextStyles.currentHandle,
                        ),
                      ],
                    ),
                    Gap(AppSizes.height16),
                    const Divider(),
                    Gap(AppSizes.height16),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: .center,
                        children: [
                          Text(
                            'تغيير الـ Handle',
                            textDirection: TextDirection.rtl,
                            style: AppTextStyles.buttonSecondary,
                          ),
                          Gap(AppSizes.width6),
                          Icon(
                            AppIcons.changeHandle,
                            color: AppColors.primary,
                            size: AppSizes.fontSize20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Gap(AppSizes.height24),
              const SettingsCategoryTitle(title: 'المظهر'),
            ],
          ),
        ),
      ),
    );
  }
}
