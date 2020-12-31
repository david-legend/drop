import 'package:drop/presentation/widgets/spaces.dart';
import 'package:drop/values/values.dart';
import 'package:flutter/material.dart';

class ProductItem {
  ProductItem({
    @required this.title,
    @required this.price,
    @required this.imagePath,
  });

  final String title;
  final String price;
  final String imagePath;
}

class ProductCard extends StatelessWidget {
  ProductCard({
    this.title,
    this.price,
    this.imagePath,
    this.icon,
    this.backgroundColor = AppColors.secondaryColor2,
    this.borderRadius = const BorderRadius.only(
      topLeft: const Radius.circular(Sizes.RADIUS_16),
      bottomLeft: const Radius.circular(Sizes.RADIUS_16),
    ),
  });

  final String title;
  final String price;
  final String imagePath;
  final IconData icon;
  final BorderRadiusGeometry borderRadius;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: backgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                icon,
                size: Sizes.ICON_SIZE_16,
                color: AppColors.primaryColor,
              ),
            ],
          ),
          Image.asset(imagePath),
          SpaceH8(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              Text(price),
            ],
          ),
        ],
      ),
    );
  }
}
