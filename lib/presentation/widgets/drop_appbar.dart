import 'package:drop/presentation/layout/adaptive.dart';
import 'package:drop/presentation/widgets/spaces.dart';
import 'package:drop/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'drop_logo.dart';

class MenuItem {
  MenuItem({@required this.title, this.textColor, this.routeName});

  final String title;
  final Color textColor;
  final String routeName;
}

class DropAppBar extends StatelessWidget {
  DropAppBar({
    this.leading,
    this.onLeadingTap,
  });

  final Widget leading;
  final GestureTapCallback onLeadingTap;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: onLeadingTap,
            child: leading ??
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DropLogo(
                      width: 30,
                      height: 30,
                    ),
                    SpaceH8(),
                    PanCakeIcon(),
                  ],
                ),
          ),
          TrailingIcons(),
        ],
      ),
    );
  }
}

class PanCakeIcon extends StatelessWidget {
  PanCakeIcon({
    this.width = 30,
    this.height = 3,
    this.color = AppColors.primaryColor,
    this.borderRadius = const BorderRadius.all(const Radius.circular(20)),
  });

  final double width;
  final double height;
  final Color color;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: color,
              borderRadius: borderRadius,
            ),
          ),
          SpaceH4(),
          Container(
            width: width * 0.65,
            height: height,
            decoration: BoxDecoration(
              color: color,
              borderRadius: borderRadius,
            ),
          ),
        ],
      ),
    );
  }
}

class TrailingIcons extends StatelessWidget {
  TrailingIcons({this.width, this.height});

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    double widthOfTrailIcons =
        width ?? assignWidth(context: context, fraction: 0.6);
    double heightOfTrailIcons =
        height ?? assignHeight(context: context, fraction: 0.1);
    return Container(
      width: widthOfTrailIcons,
      height: heightOfTrailIcons,
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.PADDING_8,
        vertical: Sizes.PADDING_8,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: AppColors.secondaryColor,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: const Radius.circular(
            Sizes.RADIUS_60,
          ),
          bottomLeft: const Radius.circular(
            Sizes.RADIUS_60,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            FeatherIcons.search,
            color: AppColors.accentPinkColor,
          ),
          Icon(
            FeatherIcons.sliders,
            color: AppColors.accentYellowColor,
          ),
          Container(
            padding: EdgeInsets.all(Sizes.PADDING_8),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: const BorderRadius.all(
                const Radius.circular(
                  Sizes.RADIUS_8,
                ),
              ),
            ),
            child: Icon(
              FeatherIcons.shoppingBag,
              size: Sizes.ICON_SIZE_18,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
