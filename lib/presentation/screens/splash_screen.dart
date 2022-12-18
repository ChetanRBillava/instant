import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instant/logic/cubit/app_theme_cubit.dart';
import 'package:instant/logic/cubit/app_theme_cubit.dart';
import 'package:sizer/sizer.dart';

import '../../core/constants/images.dart';
import '../../core/constants/strings.dart';
import '../router/app_router.dart';
import '../utils/app_texts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushNamed(AppRouter.home);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppThemeCubit, AppThemeState>(
      builder: (context, themeState) {
        return SafeArea(
          child: Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                    AppImages.logo
                ),
                AppTexts(
                  fontFamily: 'gh',
                  textString: Strings.appTitle,
                  textFontSize: 24.sp,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.bold,
                  textColor: (themeState as AppThemeSet).themeClass.textColor_2,
                ),
                AppTexts(
                  textString: Strings.appDesc,
                  textFontSize: 14.sp,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.bold,
                  textColor: (themeState).themeClass.textColor_1,
                ),
                SizedBox(height: 5.h,),
                AppTexts(
                  textString: Strings.appDev,
                  textFontSize: 10.sp,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.bold,
                  textColor: (themeState).themeClass.textCaptionColor,
                ),
                AppTexts(
                  textString: Strings.appVersion,
                  textFontSize: 10.sp,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.bold,
                  textColor: (themeState).themeClass.textCaptionColor,
                ),
                const CircularProgressIndicator(),
              ],
            ),
          ),
        );
      },
    );
  }
}
