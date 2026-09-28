import 'package:cf_companion/features/hub/widgets/hub_groub_card.dart';
import 'package:cf_companion/features/hub/widgets/hub_menu_row.dart';
import 'package:cf_companion/features/hub/widgets/hub_profile_image.dart';
import 'package:flutter/material.dart';

class HubProfileWidget extends StatelessWidget {
  const HubProfileWidget({
    super.key,
    required this.color,
    required this.handle,
    required this.image,
    required this.rate,
    this.style,
    this.onTap,
  });

  final String handle;
  final int rate;
  final String image;
  final Color color;
  final TextStyle? style;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return HubGroupCard(
      child: 
        HubMenuRow(
          title: handle,
          subtitle: 'الريت: $rate',
          leading: HubProfileImage(imageUrl: image, color: color),
          style: style,
          onTap: onTap,
        ),
      
    );
  }
}
