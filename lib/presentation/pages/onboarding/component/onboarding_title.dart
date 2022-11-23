import 'package:booking_app/config/theme/theme.dart';
import 'package:booking_app/utils/utils.dart';
import 'package:flutter/material.dart';

class OnboardingTitle extends StatelessWidget {
  final String title;
  final String description;
  const OnboardingTitle(
      {Key? key, required this.title, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: AppFont.h3,
        ),
        8.0.height,
        Text(
          description,
          textAlign: TextAlign.center,
          style: AppFont.paragraphMedium,
        ),
      ],
    );
  }
}
