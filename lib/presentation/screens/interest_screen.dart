import 'package:auto_route/auto_route.dart';
import 'package:drop/presentation/routes/router.gr.dart';
import 'package:drop/presentation/widgets/custom_appbar.dart';
import 'package:drop/presentation/widgets/custom_button.dart';
import 'package:drop/presentation/widgets/spaces.dart';
import 'package:drop/values/values.dart';
import 'package:flutter/material.dart';

class InterestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Sizes.HEIGHT_56),
        child: CustomAppBar(
          hasTrailing: false,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: Sizes.PADDING_24),
        child: Column(
          children: [
            Text(
              StringConst.LOOKING_FOR,
              style: theme.textTheme.headline4,
            ),
            SpaceH16(),
            Text(
              StringConst.CHOOSE_INTEREST,
              style: theme.textTheme.headline6,
            ),
            Spacer(flex: 2),
            CustomButton(
              onPressed: () {},
              height: Sizes.HEIGHT_60,
              borderRadiusGeometry: AppRadius.defaultButtonRadius,
              title: StringConst.DONE,
              color: AppColors.primaryColor,
              textStyle: theme.textTheme.subtitle1.copyWith(
                color: AppColors.white,
              ),
            ),
            SpaceH16(),
            CustomButton(
              onPressed: () {
//                ExtendedNavigator.root.push(Routes.interestScreen);
              },
              height: Sizes.HEIGHT_60,
              borderSide: Borders.defaultButtonBorder,
              borderRadiusGeometry: AppRadius.defaultButtonRadius,
              title: StringConst.SKIP,
              color: AppColors.white,
              textStyle: theme.textTheme.subtitle1.copyWith(
                color: AppColors.white,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
