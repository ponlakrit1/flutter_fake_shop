import 'package:flutter/material.dart';
import 'package:flutter_fake_shop/core/theme/app_color.dart';

extension CustomStyles on TextTheme {
  TextStyle get h1 {
    return TextStyle(
      fontSize: 26,
      color: AppColor.neutral.shade900,
      height: 1.2,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get h2 {
    return TextStyle(
      fontSize: 24,
      color: AppColor.neutral.shade900,
      height: 1.2,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get h3 {
    return TextStyle(
      fontSize: 22,
      color: AppColor.neutral.shade900,
      height: 1.2,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get h4 {
    return TextStyle(
      fontSize: 20,
      color: AppColor.neutral.shade900,
      height: 1.35,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get h5 {
    return TextStyle(
      fontSize: 18,
      color: AppColor.neutral.shade900,
      height: 1.35,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get h6 {
    return TextStyle(
      fontSize: 16,
      color: AppColor.neutral.shade900,
      height: 1.35,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get subTitle1 {
    return TextStyle(
      fontSize: 20.0,
      color: AppColor.neutral.shade900,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get subTitle2 {
    return TextStyle(
      fontSize: 18.0,
      color: AppColor.neutral.shade900,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get subTitle3 {
    return TextStyle(
      fontSize: 16.0,
      color: AppColor.neutral.shade900,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get subTitle4 {
    return TextStyle(
      fontSize: 14.0,
      color: AppColor.neutral.shade900,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get subTitle5 {
    return TextStyle(
      fontSize: 12.0,
      color: AppColor.neutral.shade900,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get subTitle6 {
    return TextStyle(
      fontSize: 10.0,
      color: AppColor.neutral.shade900,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get p1 {
    return TextStyle(
      fontSize: 20.0,
      color: AppColor.neutral.shade900,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get p2 {
    return TextStyle(
      fontSize: 18.0,
      color: AppColor.neutral.shade900,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get p3 {
    return TextStyle(
      fontSize: 16.0,
      color: AppColor.neutral.shade900,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get p4 {
    return TextStyle(
      fontSize: 14.0,
      color: AppColor.neutral.shade900,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get p5 {
    return TextStyle(
      fontSize: 12.0,
      color: AppColor.neutral.shade900,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get p6 {
    return TextStyle(
      fontSize: 10.0,
      color: AppColor.neutral.shade900,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get button {
    return TextStyle(
      fontSize: 16,
      color: AppColor.neutral.shade900,
      height: 1.35,
      fontWeight: FontWeight.w600,
    );
  }
}
