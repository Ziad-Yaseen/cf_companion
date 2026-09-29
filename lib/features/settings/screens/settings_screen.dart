import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:cf_companion/features/settings/widgets/about_app_section.dart';
import 'package:cf_companion/features/settings/widgets/change_handle_widget.dart';
import 'package:cf_companion/features/settings/widgets/change_theme_widget.dart';
import 'package:cf_companion/features/settings/widgets/login_widget.dart';
import 'package:cf_companion/features/settings/widgets/reminders_and_goals_widget.dart';
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
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: .end,
            children: [
              Gap(AppSizes.height4),
              const SettingsCategoryTitle(title: 'الحساب'),
              Gap(AppSizes.height10),
              ChangeHandleWidget(handle: 'tourist', onTap: () {}),
              Gap(AppSizes.height24),
              const SettingsCategoryTitle(title: 'المظهر'),
              Gap(AppSizes.height10),
              const ChangeThemeWidget(),
              Gap(AppSizes.height24),
              const SettingsCategoryTitle(title: 'التذكيرات والأهداف'),
              Gap(AppSizes.height10),
              RemindersAndGoalsWidget(
                onDefaultReminderTaped: () {},
                onIncrement: () {},
                onDecrement: () {},
              ),
              Gap(AppSizes.height24),
              const SettingsCategoryTitle(title: 'عن التطبيق'),
              Gap(AppSizes.height10),
              const AboutAppSection(appVersion: 'v1.0.0'),
              Gap(AppSizes.height32),
              const LoginWidget(),
              Gap(AppSizes.height48),
              Center(
                child: Text(
                  'CF Companion — صُنع بحب للمبرمجين التنافسيين',
                  textDirection: TextDirection.rtl,
                  style: AppTextStyles.medium11cairoDisabled,
                ),
              ),
              Gap(AppSizes.height26),
            ],
          ),
        ),
      ),
    );
  }
}
