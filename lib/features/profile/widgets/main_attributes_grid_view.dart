import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:cf_companion/features/profile/widgets/contributions_card_widget.dart';
import 'package:cf_companion/features/profile/widgets/last_seen_card_widget.dart';
import 'package:cf_companion/features/profile/widgets/registered_since_card_widget.dart';
import 'package:cf_companion/features/profile/widgets/solved_problems_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainAttributesGridView extends StatelessWidget {
  const MainAttributesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: AppSizes.width16,
        mainAxisSpacing: AppSizes.height16,
        childAspectRatio: 165.w / 114.h,
      ),
      children: const [
        ContributionsCardWidget(),
        SolvedProblemsCardWidget(),
        LastSeenCardWidget(),
        RegisteredSinceCardWidget(),
      ],
    );
  }
}
