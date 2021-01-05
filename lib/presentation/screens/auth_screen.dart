import 'package:auto_route/auto_route.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:drop/presentation/layout/adaptive.dart';
import 'package:drop/presentation/routes/router.gr.dart';
import 'package:drop/presentation/widgets/custom_button.dart';
import 'package:drop/presentation/widgets/custom_text_form_field.dart';
import 'package:drop/presentation/widgets/drop_button.dart';
import 'package:drop/presentation/widgets/drop_logo.dart';
import 'package:drop/presentation/widgets/spaces.dart';
import 'package:drop/values/values.dart';
import 'package:flutter/material.dart';

const double kPadding = Sizes.PADDING_24;

//TODO:: add borders bubbleTabIndicator
class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double logoSize = Sizes.WIDTH_100;
    double widthOfScreen = assignWidth(context: context, fraction: 1);
    double heightOfScreen =
        assignHeight(context: context, fraction: 1) - Sizes.SAFE_AREA_MARGIN;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: Sizes.SAFE_AREA_MARGIN),
          child: ListView(
            children: [
              SizedBox(
                height: heightOfScreen * 0.05,
              ),
              Center(
                child: Column(
                  children: [
                    DropLogo(),
                    Text(
                      StringConst.APP_NAME.toUpperCase(),
                      style: theme.textTheme.headline4,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: heightOfScreen * 0.05,
              ),
              Container(
                height: heightOfScreen * 0.7,
                decoration: Decorations.primaryDecoration,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kPadding,
                        vertical: Sizes.PADDING_16,
                      ),
                      child: TabBar(
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelColor: AppColors.primaryText,
                        unselectedLabelColor: AppColors.accentPurpleColor,
                        labelStyle: theme.textTheme.subtitle1.copyWith(
                          color: AppColors.primaryText,
                        ),
                        unselectedLabelStyle:
                            theme.textTheme.subtitle1.copyWith(
                          color: AppColors.accentPurpleColor,
                        ),
                        indicator: BubbleTabIndicator(
                          indicatorHeight: Sizes.HEIGHT_40,
                          indicatorColor: AppColors.white,
                          tabBarIndicatorSize: TabBarIndicatorSize.tab,
                        ),
                        tabs: [
                          Tab(
                            text: StringConst.LOG_IN_2.toUpperCase(),
                          ),
                          Tab(
                            text: StringConst.SIGN_UP,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          _buildLogin(context),
                          _buildLogin(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogo(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      children: [
        Text(
          "Logo Goes Here",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline5,
        ),
        SpaceH16(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 75),
          child: Center(
            child: Placeholder(
              fallbackWidth: 150,
              fallbackHeight: 150,
              strokeWidth: 1,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLogin(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextStyle hintTextStyle = theme.textTheme.subtitle1;
    TextStyle formTextStyle = theme.textTheme.subtitle1;

    return Container(
      padding: const EdgeInsets.only(left: kPadding),
      child: Column(
        children: [
          CustomTextFormField(
            textFormFieldStyle: formTextStyle,
            hintText: StringConst.EMAIL_2,
            prefixIconColor: AppColors.primaryColor,
            hintTextStyle: hintTextStyle,
            border: Borders.defaultPrimaryUnderlineBorder,
            enabledBorder: Borders.defaultPrimaryUnderlineBorder,
            focusedBorder: Borders.defaultPrimaryUnderlineBorder,
            filled: false,
          ),
          SpaceH16(),
          CustomTextFormField(
            textFormFieldStyle: formTextStyle,
            hintText: StringConst.PASSWORD,
            prefixIconColor: AppColors.primaryColor,
            hintTextStyle: hintTextStyle,
            border: Borders.defaultPrimaryUnderlineBorder,
            enabledBorder: Borders.defaultPrimaryUnderlineBorder,
            focusedBorder: Borders.defaultPrimaryUnderlineBorder,
            obscured: true,
            filled: false,
          ),
          Spacer(),
          DropButton(
            onTap: () {
              ExtendedNavigator.root.push(Routes.verificationScreen);
            },
            height: Sizes.HEIGHT_60,
            borderRadiusGeometry: AppRadius.defaultButtonRadius,
            title: StringConst.LOG_IN,
            textStyle: theme.textTheme.subtitle1.copyWith(
              color: AppColors.white,
            ),
          ),
          SpaceH16(),
          CustomButton(
            onPressed: () {},
            height: Sizes.HEIGHT_60,
            borderRadiusGeometry: AppRadius.defaultButtonRadius,
            title: StringConst.LOG_IN_WITH_GOOGLE,
            color: AppColors.white,
            borderSide: Borders.defaultButtonBorder,
            textStyle: theme.textTheme.subtitle1,
          ),
          SpaceH16(),
          CustomButton(
            onPressed: () {},
            height: Sizes.HEIGHT_60,
            borderRadiusGeometry: AppRadius.defaultButtonRadius,
            title: StringConst.LOG_IN_WITH_FACEBOOK,
            color: AppColors.white,
            borderSide: Borders.defaultButtonBorder,
            textStyle: theme.textTheme.subtitle1,
          ),
          Spacer(),
        ],
      ),
    );
  }

  Widget _buildSignUp() {
    return Container();
  }
}
