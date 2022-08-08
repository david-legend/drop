import 'package:auto_route/auto_route.dart';
import 'package:drop/presentation/routes/router.gr.dart';
import 'package:drop/presentation/widgets/custom_appbar.dart';
import 'package:drop/presentation/widgets/custom_button.dart';
import 'package:drop/presentation/widgets/pill.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringConst.LOOKING_FOR,
              style: theme.textTheme.headlineLarge,
            ),
            SpaceH16(),
            Text(
              StringConst.CHOOSE_INTEREST,
              style: theme.textTheme.headlineSmall,
            ),
            SpaceH16(),
            Wrap(
              spacing: Sizes.SIZE_16,
              runSpacing: Sizes.SIZE_16,
              children: _buildInterestPills(Data.pillItems),
            ),
            Spacer(flex: 2),
            CustomButton(
              onPressed: () {
                AutoRouter.of(context).push(HomeScreenRoute());
              },
              height: Sizes.HEIGHT_60,
              borderRadiusGeometry: AppRadius.defaultButtonRadius,
              title: StringConst.DONE,
              color: AppColors.primaryColor,
              textStyle: theme.textTheme.titleLarge?.copyWith(
                color: AppColors.white,
              ),
            ),
            SpaceH16(),
            CustomButton(
              onPressed: () {
                AutoRouter.of(context).push(HomeScreenRoute());
              },
              height: Sizes.HEIGHT_60,
              borderSide: Borders.defaultButtonBorder,
              borderRadiusGeometry: AppRadius.defaultButtonRadius,
              title: StringConst.SKIP,
              color: AppColors.white,
              textStyle: theme.textTheme.titleLarge?.copyWith(
                color: AppColors.secondaryColor2,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildInterestPills(List<PillItem> pillItems) {
    List<Widget> items = [];

    for (int index = 0; index < pillItems.length; index++) {
      items.add(
        Pill(
          title: pillItems[index].title,
          selectedBackgroundColor: pillItems[index].color!,
        ),
      );
    }

    return items;
  }
}
