import 'package:drop/presentation/widgets/spaces.dart';
import 'package:drop/values/values.dart';
import 'package:flutter/material.dart';

class ProductDealItem {
  ProductDealItem({
    @required this.title,
    @required this.subtitle,
    @required this.price,
    @required this.imagePath,
  });

  final String title;
  final String subtitle;
  final String price;
  final String imagePath;
}

class ProductDealCard extends StatelessWidget {
  ProductDealCard({
    this.title,
    this.subtitle,
    this.price,
    this.imagePath,
    this.backgroundColor = AppColors.secondaryColor2,
    this.borderRadius = const BorderRadius.all(
      const Radius.circular(Sizes.RADIUS_16),
    ),
  });

  final String title;
  final String subtitle;
  final String price;
  final String imagePath;
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
      child: Row(
        children: [
          Column(
            children: [
              Text(title),
              Text(subtitle),
              Text(price),
            ],
          ),
          Image.asset(imagePath),
        ],
      ),
    );
  }
}
