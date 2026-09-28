import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class SettingsCategoryTitle extends StatelessWidget {
  const new({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: AppTextStyles.secondarySmallTitleText);
  }
}
