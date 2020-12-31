import 'package:drop/presentation/widgets/custom_appbar.dart';
import 'package:drop/presentation/widgets/custom_button.dart';
import 'package:drop/presentation/widgets/otp_text_field.dart';
import 'package:drop/presentation/widgets/spaces.dart';
import 'package:drop/values/values.dart';
import 'package:flutter/material.dart';

class VerificationScreen extends StatefulWidget {
  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    List<TextStyle> otpTextStyles = [
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
              style: theme.textTheme.headline4,
            ),
            SpaceH16(),
            Text(
              StringConst.VERIFICATION_TEXT,
              style: theme.textTheme.headline6,
            ),
            Text(StringConst.ENTER_CODE, style: theme.textTheme.headline6),
            Spacer(flex: 2),
            OtpTextField(
              numberOfFields: 6,
              borderColor: Color(0xFF512DA8),
              styles: otpTextStyles,
              showFieldAsBox: false,
              //set to true to show as box or false to show as dash
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              onSubmit: (String verificationCode) {}, // end onSubmit
            ),
            Spacer(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  StringConst.VERIFICATION_DESCRIPTION,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyText1,
                ),
              ),
            ),
            Center(
              child: Text(
                StringConst.NO_CODE,
                style: theme.textTheme.subtitle1,
              ),
            ),
            Spacer(flex: 3),
            CustomButton(
              onPressed: () {},
              height: Sizes.HEIGHT_60,
              borderRadiusGeometry: AppRadius.defaultButtonRadius,
              title: StringConst.CONFIRM,
              color: AppColors.primaryColor,
              textStyle: theme.textTheme.subtitle1.copyWith(
                color: AppColors.white,
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }

  TextStyle createStyle(Color color) {
    ThemeData theme = Theme.of(context);
    return theme.textTheme.headline3.copyWith(color: color);
  }
}
