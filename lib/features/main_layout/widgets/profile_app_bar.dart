import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key});

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
              children: [
                const Spacer(),
                Text('البروفايل', style: AppTextStyles.screenTitle),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
