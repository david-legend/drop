import 'package:drop/presentation/layout/adaptive.dart';
import 'package:drop/values/values.dart';
import 'package:flutter/material.dart';

class SocialItem {
  SocialItem({@required this.iconData, this.backgroundColor});

  final IconData iconData;
  final Color backgroundColor;
}

class SocialIcon extends StatelessWidget {
  SocialIcon({
    this.width,
    this.height,
    this.backgroundColor = AppColors.accentOrangeColor,
    this.borderRadius = const BorderRadius.all(
      const Radius.circular(
        Sizes.RADIUS_12,
      ),
    ),
    this.iconColor = AppColors.white,
    this.iconSize = Sizes.ICON_SIZE_40,
    this.iconData,
    this.icon,
  });

  final double width;
  final double height;
  final Color backgroundColor;
  final Color iconColor;
  final BorderRadiusGeometry borderRadius;
  final double iconSize;
  final IconData iconData;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    double widthOfSocialContainer =
        width ?? assignWidth(context: context, fraction: 0.3);
    double heightOfSocialContainer =
        height ?? assignHeight(context: context, fraction: 0.1);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: backgroundColor,
      ),
      child: icon ??
          Icon(
            iconData,
            color: iconColor,
            size: iconSize,
          ),
    );
  }
}
