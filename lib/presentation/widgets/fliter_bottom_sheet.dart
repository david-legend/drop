import 'package:drop/presentation/layout/adaptive.dart';
import 'package:drop/presentation/widgets/custom_button.dart';
import 'package:drop/presentation/widgets/spaces.dart';
import 'package:drop/values/values.dart';
import 'package:flutter/material.dart';

import 'container_handle.dart';

class BrandItem {
  final String brand;
  final String imagePath;
  final Color color;

  BrandItem({
    required this.brand,
    required this.imagePath,
    this.color = AppColors.accentPurpleColor,
  });
}

//TODO:: add correct thumb color for rangeSlider
class FilterBottomSheet extends StatefulWidget {
  final List<BrandItem> brands;
  final List<Color> colors;

  FilterBottomSheet({
    required this.brands,
    required this.colors,
  });

  @override
  _FilterBottomSheetState createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  RangeValues _currentRangeValues = const RangeValues(0, 399);
  bool isMaleSelected = true;
  bool isFemaleSelected = false;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextStyle? selectedStyle = theme.textTheme.titleLarge?.copyWith(
      color: AppColors.white,
    );

    TextStyle? unSelectedStyle = theme.textTheme.titleLarge?.copyWith(
      color: AppColors.secondaryColor2,
    );

    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
      return Container(
        height: assignHeight(context: context, fraction: 0.7),
        child: ListView(
          padding: const EdgeInsets.only(
            top: Sizes.PADDING_12,
            left: Sizes.PADDING_24,
            right: Sizes.PADDING_24,
            bottom: Sizes.PADDING_24,
          ),
          children: [
            Center(child: ContainerHandle()),
            SpaceH16(),
            Center(
              child: Text(
                StringConst.FILTER,
                style: theme.textTheme.headlineLarge,
              ),
            ),
            SpaceH16(),
            Center(
              child: Text(
                StringConst.PRICE,
                style: theme.textTheme.headlineSmall,
              ),
            ),
            SpaceH16(),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: AppColors.primaryColor,
                inactiveTrackColor: AppColors.secondaryColor2,
                thumbColor: AppColors.accentPurpleColor,
                valueIndicatorTextStyle: theme.textTheme.bodyLarge,
                valueIndicatorColor: AppColors.secondaryColor,
                disabledThumbColor: AppColors.accentYellowColor,
              ),
              child: RangeSlider(
                values: _currentRangeValues,
                min: 0,
                max: 1000,
                divisions: 1000,
                labels: RangeLabels(
                  "\$${_currentRangeValues.start.round().toString()}",
                  "\$${_currentRangeValues.end.round().toString()}",
                ),
                onChanged: (RangeValues values) {
                  setState(() {
                    _currentRangeValues = values;
                  });
                },
              ),
            ),
            SpaceH24(),
            Center(
              child: Text(
                StringConst.GENDER,
                style: theme.textTheme.headlineSmall,
              ),
            ),
            SpaceH24(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: assignWidth(context: context, fraction: 0.3),
                  child: CustomButton(
                    onPressed: () => flipGender(
                      maleState: isMaleSelected,
                    ),
                    height: Sizes.HEIGHT_48,
                    borderRadius: Sizes.RADIUS_8,
                    color: isMaleSelected
                        ? AppColors.primaryColor
                        : AppColors.white,
                    borderSide: isMaleSelected
                        ? Borders.defaultPrimaryBorder
                        : Borders.defaultButtonBorder,
                    title: StringConst.MEN,
                    textStyle: isMaleSelected ? selectedStyle : unSelectedStyle,
                  ),
                ),
                Container(
                  width: assignWidth(context: context, fraction: 0.3),
                  child: CustomButton(
                    onPressed: () => flipGender(
                      femaleState: isFemaleSelected,
                    ),
                    height: Sizes.HEIGHT_48,
                    borderRadius: Sizes.RADIUS_8,
                    borderSide: isFemaleSelected
                        ? Borders.defaultPrimaryBorder
                        : Borders.defaultButtonBorder,
                    color: isFemaleSelected
                        ? AppColors.primaryColor
                        : AppColors.white,
                    title: StringConst.WOMEN,
                    textStyle:
                        isFemaleSelected ? selectedStyle : unSelectedStyle,
                  ),
                ),
              ],
            ),
            SpaceH24(),
            Center(
              child: Text(
                StringConst.BRAND,
                style: theme.textTheme.headlineSmall,
              ),
            ),
            SpaceH24(),
            Container(
              height: Sizes.HEIGHT_60,
              child: ListView.separated(
                itemCount: widget.brands.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: Sizes.WIDTH_60,
                    height: Sizes.HEIGHT_60,
                    padding: EdgeInsets.all(Sizes.PADDING_8),
                    decoration: BoxDecoration(
                      border: Border.all(color: widget.brands[index].color),
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(
                          Sizes.RADIUS_8,
                        ),
                      ),
                    ),
                    child: ClipRRect(
                      child: Image.asset(
                        widget.brands[index].imagePath,
                        width: Sizes.WIDTH_50,
                        height: Sizes.HEIGHT_50,
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SpaceW8();
                },
              ),
            ),
            SpaceH24(),
            Center(
              child: Text(
                StringConst.COLOR,
                style: theme.textTheme.headlineSmall,
              ),
            ),
            SpaceH24(),
            Container(
              height: Sizes.HEIGHT_60,
              child: ListView.separated(
                itemCount: widget.colors.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: Sizes.WIDTH_60,
                    height: Sizes.HEIGHT_60,
                    decoration: BoxDecoration(
                      color: widget.colors[index],
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(
                          Sizes.RADIUS_8,
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SpaceW8();
                },
              ),
            ),
          ],
        ),
      );
    });
  }

  void flipGender({
    bool? maleState,
    bool? femaleState,
  }) {
    if (maleState != null && maleState == false) {
      setState(() {
        isMaleSelected = !maleState;
        isFemaleSelected = maleState;
      });
    }
    if (femaleState != null && femaleState == false) {
      setState(() {
        isMaleSelected = femaleState;
        isFemaleSelected = !femaleState;
      });
    }
  }
}
