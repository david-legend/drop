import 'package:auto_route/auto_route.dart';
import 'package:drop/presentation/routes/router.gr.dart';
import 'package:drop/presentation/widgets/custom_appbar.dart';
import 'package:drop/presentation/widgets/custom_button.dart';
import 'package:drop/presentation/widgets/spaces.dart';
import 'package:drop/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class VerificationScreen extends StatefulWidget {
  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    List<TextStyle?> otpTextStyles = [
      createStyle(AppColors.accentPurpleColor),
      createStyle(AppColors.accentYellowColor),
      createStyle(AppColors.accentDarkGreenColor),
      createStyle(AppColors.accentOrangeColor),
      createStyle(AppColors.accentPinkColor),
      createStyle(AppColors.accentPurpleColor),
    ];
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
              StringConst.VERIFICATION_CODE,
              style: theme.textTheme.headlineLarge,
            ),
            SpaceH16(),
            Text(
              StringConst.VERIFICATION_TEXT,
              style: theme.textTheme.headlineSmall,
            ),
            Text(StringConst.ENTER_CODE, style: theme.textTheme.headlineSmall),
            Spacer(flex: 2),
            OtpTextField(
              numberOfFields: 6,
              borderColor: AppColors.accentPurpleColor,
              focusedBorderColor: AppColors.accentPurpleColor,
              styles: otpTextStyles,
              showFieldAsBox: false,
              borderWidth: Sizes.WIDTH_8,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {}, // end onSubmit
            ),
            Spacer(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  StringConst.VERIFICATION_DESCRIPTION,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
            ),
            Center(
              child: Text(
                StringConst.NO_CODE,
                style: theme.textTheme.titleLarge,
              ),
            ),
            Spacer(flex: 3),
            CustomButton(
              onPressed: () {
                AutoRouter.of(context).push(InterestScreenRoute());
              },
              height: Sizes.HEIGHT_60,
              borderRadiusGeometry: AppRadius.defaultButtonRadius,
              title: StringConst.CONFIRM,
              color: AppColors.primaryColor,
              textStyle: theme.textTheme.titleLarge?.copyWith(
                color: AppColors.white,
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }

  TextStyle? createStyle(Color color) {
    ThemeData theme = Theme.of(context);
    return theme.textTheme.displaySmall?.copyWith(color: color);
  }
}
