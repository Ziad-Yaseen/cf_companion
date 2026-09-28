import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class HubAppBar extends StatelessWidget {
  const HubAppBar({super.key});

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
                const Spacer(),
                Text(
                  'المزيد',
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
