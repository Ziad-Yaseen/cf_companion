import 'package:cf_companion/core/components/main_app_bar.dart';
import 'package:cf_companion/core/components/rounded_border_container.dart';
import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [Text('Name'), Text('Secound Text')],
        ),
        actions: [
          SizedBox(
            width: AppSizes.width50,
            height: AppSizes.width50,
            child: RoundedBorderContainer(
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                size: AppSizes.fontSize20,
                color: AppColors.textPrimary,
              ),
            ),
          ),
          Gap(AppSizes.width20),
        ],
      ),
      body: null,
    );
  }
}
