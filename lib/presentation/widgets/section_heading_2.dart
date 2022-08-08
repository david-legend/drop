import 'package:drop/presentation/widgets/spaces.dart';
import 'package:flutter/material.dart';
import 'package:drop/presentation/widgets/empty.dart';
import 'package:drop/values/values.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class SectionHeading2 extends StatelessWidget {
  SectionHeading2({
    required this.title1,
    this.title2,
    this.title1TextStyle,
    this.title2TextStyle,
    this.padding = const EdgeInsets.only(right: Sizes.PADDING_16),
    this.hasTitle2 = true,
  }): assert((hasTitle2 == true && title2 != null) || (hasTitle2 == false && title2 == null));

  final String title1;
  final String? title2;
  final TextStyle? title1TextStyle;
  final TextStyle? title2TextStyle;
  final EdgeInsetsGeometry? padding;
  final bool hasTitle2;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      padding: padding,
      child: Row(
        children: [
          Text(
            title1,
            style: title1TextStyle ?? theme.textTheme.headlineLarge,
          ),
          hasTitle2 ? Spacer() : Empty(),
          hasTitle2
              ? Text(
                  title2!,
                  style: title2TextStyle ??
                      theme.textTheme.titleLarge?.copyWith(
                        color: AppColors.primaryColor,
                      ),
                )
              : Empty(),
          hasTitle2 ? SpaceW4() : Empty(),
          hasTitle2
              ? Icon(
                  FeatherIcons.chevronDown,
                  size: Sizes.ICON_SIZE_20,
                  color: AppColors.primaryColor,
                )
              : Empty(),
        ],
      ),
    );
  }
}
