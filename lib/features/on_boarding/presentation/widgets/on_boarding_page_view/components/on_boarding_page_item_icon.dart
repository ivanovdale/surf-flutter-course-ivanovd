import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Приветственная картинка страницы онбординга.
class OnBoardingPageItemIcon extends StatelessWidget {
  final String assetName;
  final Color color;

  const OnBoardingPageItemIcon({
    super.key,
    required this.assetName,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 42),
      child: SvgPicture.asset(
        assetName,
        width: 100,
        colorFilter: ColorFilter.mode(
          color,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
