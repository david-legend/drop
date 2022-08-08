import 'package:drop/values/values.dart';
import 'package:flutter/material.dart';

const List<Color> buttonColors = [
  AppColors.accentOrangeColor,
  AppColors.accentDarkGreenColor,
  AppColors.accentYellowColor,
  AppColors.accentPinkColor,
  AppColors.accentPurpleColor,
];

class DropButton extends StatelessWidget {
  DropButton({
    required this.title,
    this.width,
    this.onTap,
    this.height = Sizes.HEIGHT_60,
    this.colorWidth = Sizes.WIDTH_10,
    this.elevation = Sizes.ELEVATION_1,
    this.borderRadius = Sizes.RADIUS_24,
    this.color = AppColors.accentPrimaryColor,
    this.borderSide = Borders.defaultPrimaryBorder,
    this.textStyle,
    this.colors = buttonColors,
    this.borderRadiusGeometry,
    // this.icon,
    // this.hasIcon = false,
  });

  final GestureTapCallback? onTap;
  final double height;
  final double? width;
  final double colorWidth;
  final List<Color> colors;
  final double elevation;
  final double borderRadius;
  final BorderRadius? borderRadiusGeometry;
  final String title;
  final Color color;
  final BorderSide borderSide;
  final TextStyle? textStyle;
  // final Widget icon;
  // final bool hasIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: borderRadiusGeometry,
          color: color,
          boxShadow: [
            Shadows.containerShadow2,
          ],
        ),
        child: ClipRRect(
          borderRadius: borderRadiusGeometry,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ..._buildColors(colors),
              Spacer(),
              Text(
                title,
                style: textStyle,
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildColors(List<Color> colors) {
    List<Widget> items = [];

    for (int index = 0; index < colors.length; index++) {
      items.add(
        Container(
          width: colorWidth,
          height: height,
          color: colors[index],
        ),
      );
    }
    return items;
  }
}
