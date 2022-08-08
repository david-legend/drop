import 'package:drop/presentation/layout/adaptive.dart';
import 'package:drop/presentation/widgets/spaces.dart';
import 'package:drop/values/values.dart';
import 'package:flutter/material.dart';

const double kPaddingHorizontal = Sizes.PADDING_16;

class CategoryItem {
  CategoryItem({
    required this.title,
    required this.imagePath,
    this.subtitle,
    this.subtitleColor,
  });

  final String title;
  final String imagePath;
  final String? subtitle;
  final Color? subtitleColor;
}

class CategoryCard extends StatelessWidget {
  CategoryCard({
    required this.title,
    required this.imagePath,
    this.subtitle = "0",
    this.width = Sizes.WIDTH_200,
    this.height = Sizes.HEIGHT_200,
    this.subtitleColor = AppColors.accentOrangeColor,
    this.backgroundColor = AppColors.secondaryColor,
    this.borderRadius = const BorderRadius.all(
      const Radius.circular(Sizes.RADIUS_30),
    ),
    this.onTap,
  });

  final String title;
  final String subtitle;
  final double width;
  final double height;
  final Color subtitleColor;
  final String imagePath;
  final BorderRadius? borderRadius;
  final Color backgroundColor;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: borderRadius,
              ),
              width: width,
              height: height,
              child: ClipRRect(
                borderRadius: borderRadius,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SpaceH8(),
            Row(
              children: [
                Text(
                  title,
                  style: theme.textTheme.titleLarge,
                ),
                SpaceW4(),
                Text(
                  "($subtitle)",
                  style:
                      theme.textTheme.titleMedium?.copyWith(color: subtitleColor),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
