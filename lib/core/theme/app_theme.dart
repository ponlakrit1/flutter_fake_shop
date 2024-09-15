import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_fake_shop/core/theme/app_color.dart';

class AppTheme {
  static ThemeData get defaultTheme {
    return ThemeData(
      useMaterial3: false,
      fontFamily: 'NotoSansThai',
      canvasColor: Colors.white,
      colorScheme: ThemeData().colorScheme.copyWith(primary: AppColor.primary),
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
    );
  }
}
