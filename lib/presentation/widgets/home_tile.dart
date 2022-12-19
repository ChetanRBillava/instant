import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../logic/cubit/app_theme_cubit.dart';
import '../utils/app_texts.dart';

class HomeTile extends StatelessWidget {
  const HomeTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppThemeCubit, AppThemeState>(
      builder: (context, themeState) {
        return Padding(
          padding: EdgeInsets.only(top: 1.h),
          child: Column(
            children: [
              Container(
                color: (themeState as AppThemeSet).themeClass.textCaptionColor,
                width: 100.w,
                height: 0.03.h,
              ),
              ///header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///profile
                  Row(
                    children: [
                      ///avatar
                      Padding(
                        padding: EdgeInsets.all(2.w),
                        child: Container(
                          height: 10.w,
                          width: 10.w,
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
                                  'https://i.pravatar.cc/${10.w.round()}',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      ///user
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ///user name
                          AppTexts(
                            textString: 'user1234',
                            textFontSize: 10.sp,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.bold,
                            textColor: (themeState as AppThemeSet).themeClass.textColor_1,
                          ),
                          ///user location
                          AppTexts(
                            textString: 'location',
                            textFontSize: 8.sp,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.bold,
                            textColor: (themeState).themeClass.textCaptionColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                  ///options icon
                  Padding(
                    padding: EdgeInsets.only(right: 2.w, left: 2.w),
                    child: const Icon(
                        Icons.more_vert
                    ),
                  ),
                ],
              ),
              ///Image
              FadeInImage.assetNetwork(
                placeholder: 'assets/loading.gif',
                height: 67.w,
                width: 100.w,
                image: 'https://picsum.photos/${100.w.round()}/${67.w.round()}',
              ),
              ///reactions
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///other
                  Row(
                    children: [
                      ///like
                      Padding(
                        padding: EdgeInsets.all(2.w),
                        child: const Icon(
                          Icons.favorite_border,
                        ),
                      ),
                      ///comment
                      Padding(
                        padding: EdgeInsets.all(2.w),
                        child: const Icon(
                          Icons.chat_bubble_outline,
                        ),
                      ),
                      ///send
                      Padding(
                        padding: EdgeInsets.all(2.w),
                        child: const Icon(
                          Icons.send_outlined,
                        ),
                      ),
                    ],
                  ),
                  ///save
                  Padding(
                    padding: EdgeInsets.all(2.w),
                    child: const Icon(
                      Icons.bookmark_border,
                    ),
                  ),
                ],
              ),
              ///likes
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(2.w),
                    child: AppTexts(
                      textString: '${Random().nextInt(100)} likes',
                      textFontSize: 11.sp,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.bold,
                      textColor: (themeState).themeClass.textColor_1,
                    ),
                  ),
                ],
              ),
              ///caption
              Row(
                children: [
                  ///username
                  Padding(
                    padding: EdgeInsets.only(left: 2.w),
                    child: AppTexts(
                      textString: 'user1234',
                      textFontSize: 11.sp,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.bold,
                      textColor: (themeState).themeClass.textColor_1,
                    ),
                  ),
                  ///caption
                  Padding(
                    padding: EdgeInsets.only(left: 1.w),
                    child: AppTexts(
                      textString: 'lorem ipsum',
                      textFontSize: 11.sp,
                      textAlign: TextAlign.center,
                      textColor: (themeState).themeClass.textColor_1,
                    ),
                  ),
                ],
              ),
              ///time
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(2.w),
                    child: AppTexts(
                      textString: '${Random().nextInt(7)} days ago',
                      textFontSize: 8.sp,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.bold,
                      textColor: (themeState).themeClass.textCaptionColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}