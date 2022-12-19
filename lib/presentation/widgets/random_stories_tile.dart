import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../logic/cubit/app_theme_cubit.dart';
import '../utils/app_texts.dart';

class RandomStoriesTile extends StatelessWidget {
  const RandomStoriesTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppThemeCubit, AppThemeState>(
      builder: (context, themeState) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 2.w, right: 2.w),
              child: Container(
                height: 18.w,
                width: 18.w,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.orange,
                      Colors.pink
                    ]),
                    shape: BoxShape.circle),
                child: Padding(
                  //this padding will be you border size
                  padding: EdgeInsets.all(0.5.w),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      foregroundImage: NetworkImage(
                        'https://i.pravatar.cc/${18.w.round()}',
                      ),
                    ),
                  ),
                ),
              ),
            ),

            ///user name
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppTexts(
                  textString: 'Random user',
                  textFontSize: 8.sp,
                  textAlign: TextAlign.center,
                  textColor: (themeState as AppThemeSet).themeClass.textCaptionColor,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}