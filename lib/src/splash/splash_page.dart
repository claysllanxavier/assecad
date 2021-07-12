import 'package:assecad/src/core/core.dart';
import 'package:assecad/src/shared/utils/screen_ratio.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenRatio().init(context);

    Future.delayed(Duration(seconds: 2))
        .then((_) => Navigator.pushReplacementNamed(context, '/login'));

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppGradients.linear,
        ),
        child: Center(
          child: Image.asset(
            AppImages.logo,
            height: ScreenRatio.screenheight! / 1.15,
            width: ScreenRatio.screenwidth! / 1.15,
          ),
        ),
      ),
    );
  }
}
