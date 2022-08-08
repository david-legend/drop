import 'package:flutter/material.dart';
import 'package:drop/presentation/layout/adaptive.dart';
import 'package:drop/values/values.dart';

class ContainerHandle extends StatelessWidget {
  ContainerHandle({
    this.height = 5,
    this.width,
    this.color = AppColors.secondaryColor2,
    this.borderRadius = const BorderRadius.all(const Radius.circular(16)),
  });

  final double height;
  final double? width;
  final Color color;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? assignWidth(context: context, fraction: 0.125),
      height: height,
      decoration: BoxDecoration(borderRadius: borderRadius, color: color),
    );
  }
}
