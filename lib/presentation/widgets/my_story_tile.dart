import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../logic/cubit/app_theme_cubit.dart';
import '../utils/app_texts.dart';

class MyStoryTile extends StatelessWidget {
  const MyStoryTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppThemeCubit, AppThemeState>(
      builder: (context, themeState) {
        return Padding(
          padding: EdgeInsets.only(left: 2.w, right: 2.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              ///avatar
              Stack(
                children: [
                  Container(
                    height: 18.w,
                    width: 18.w,
                    decoration: const BoxDecoration(
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
                  Positioned(
                    bottom: 2.sp,
                    right: 2.sp,
                    child: Container(
                      decoration: BoxDecoration(
                          color: (themeState as AppThemeSet).themeClass
                              .secondaryColor,
                          shape: BoxShape.circle
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(2.sp),
                        child: Container(
                          width: 15.sp,
                          height: 15.sp,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: themeState.themeClass.infoColor,
                              shape: BoxShape.circle
                          ),
                          child: Icon(
                            Icons.add,
                            size: 10.sp,
                            color: themeState.themeClass.secondaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ///user name
              AppTexts(
                textString: 'Your story',
                textFontSize: 8.sp,
                textAlign: TextAlign.center,
                textColor: (themeState).themeClass.textCaptionColor,
              ),
            ],
          ),
        );
      },
    );
  }
}