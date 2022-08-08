import 'package:drop/values/values.dart';
import 'package:flutter/material.dart';

class SelectorModel {
  SelectorModel({
    required this.title,
    this.isSelected = false,
    this.imagePath,
    required this.backgroundColor,
  });

  bool isSelected;
  final String title;
  final String? imagePath;
  final Color backgroundColor;
}

class SelectableContainer extends StatelessWidget {
  SelectableContainer({
    this.width = Sizes.WIDTH_60,
    this.height = Sizes.HEIGHT_60,
    this.padding = const EdgeInsets.all(Sizes.PADDING_8),
    this.borderRadius = const BorderRadius.all(
      const Radius.circular(Sizes.RADIUS_8),
    ),
    this.border,
    this.backgroundColor,
    required this.model,
    this.onTap,
    this.child,
  });

  final double width;
  final double height;
  final BorderRadiusGeometry borderRadius;
  final EdgeInsetsGeometry padding;
  final Color? backgroundColor;
  final Border? border;
  final SelectorModel model;
  final GestureTapCallback? onTap;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor ?? model.backgroundColor,
          borderRadius: borderRadius,
          boxShadow: model.isSelected ? [Shadows.containerShadow2] : null,
        ),
        child: child ??
            Text(
              model.title,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge?.copyWith(
                color:
                    model.isSelected ? AppColors.white : AppColors.primaryColor,
                fontSize: Sizes.TEXT_SIZE_28,
              ),
            ),
      ),
    );
  }
}
