import 'package:auto_route/auto_route.dart';
import 'package:drop/presentation/layout/adaptive.dart';
import 'package:drop/presentation/routes/router.gr.dart';
import 'package:drop/presentation/widgets/CustomBubbleTabIndicator.dart';
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
                      style: theme.textTheme.headlineLarge,
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
                        labelStyle: theme.textTheme.titleLarge?.copyWith(
                          color: AppColors.primaryText,
                        ),
                        unselectedLabelStyle:
                            theme.textTheme.titleLarge?.copyWith(
                          color: AppColors.accentPurpleColor,
                        ),
                        indicator: CustomBubbleTabIndicator(
                          indicatorHeight: Sizes.HEIGHT_40,
                          indicatorColor: AppColors.white,
                          tabBarIndicatorSize: TabBarIndicatorSize.tab,
                        ),
                        tabs: [
                          Tab(
                            text: StringConst.LOG_IN_2.toUpperCase(),
                          ),
                          Tab(
                            text: StringConst.SIGN_UP.toUpperCase(),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          _buildLogin(context),
                          _buildSignUp(context),
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

  Widget _buildLogin(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextStyle? hintTextStyle = theme.textTheme.titleLarge;
    TextStyle? formTextStyle = theme.textTheme.titleLarge;

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
              AutoRouter.of(context).push(VerificationScreenRoute());
            },
            height: Sizes.HEIGHT_60,
            borderRadiusGeometry: AppRadius.defaultButtonRadius,
            title: StringConst.LOG_IN,
            textStyle: theme.textTheme.titleLarge?.copyWith(
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
            textStyle: theme.textTheme.titleLarge,
          ),
          SpaceH16(),
          CustomButton(
            onPressed: () {},
            height: Sizes.HEIGHT_60,
            borderRadiusGeometry: AppRadius.defaultButtonRadius,
            title: StringConst.LOG_IN_WITH_FACEBOOK,
            color: AppColors.white,
            borderSide: Borders.defaultButtonBorder,
            textStyle: theme.textTheme.titleLarge,
          ),
          Spacer(),
        ],
      ),
    );
  }

  Widget _buildSignUp(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextStyle? hintTextStyle = theme.textTheme.titleLarge;
    TextStyle? formTextStyle = theme.textTheme.titleLarge;

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
          SpaceH16(),
          CustomTextFormField(
            textFormFieldStyle: formTextStyle,
            hintText: StringConst.CONFIRM_PASSWORD,
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
              AutoRouter.of(context).push(VerificationScreenRoute());
            },
            height: Sizes.HEIGHT_60,
            borderRadiusGeometry: AppRadius.defaultButtonRadius,
            title: StringConst.SIGN_UP,
            textStyle: theme.textTheme.titleLarge?.copyWith(
              color: AppColors.white,
            ),
          ),
          SpaceH16(),
          CustomButton(
            onPressed: () {},
            height: Sizes.HEIGHT_60,
            borderRadiusGeometry: AppRadius.defaultButtonRadius,
            title: StringConst.SIGN_UP_WITH_GOOGLE,
            color: AppColors.white,
            borderSide: Borders.defaultButtonBorder,
            textStyle: theme.textTheme.titleLarge,
          ),
          SpaceH16(),
          CustomButton(
            onPressed: () {},
            height: Sizes.HEIGHT_60,
            borderRadiusGeometry: AppRadius.defaultButtonRadius,
            title: StringConst.SIGN_UP_WITH_FACEBOOK,
            color: AppColors.white,
            borderSide: Borders.defaultButtonBorder,
            textStyle: theme.textTheme.titleLarge,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
