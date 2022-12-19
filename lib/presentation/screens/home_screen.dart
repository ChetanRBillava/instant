import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instant/presentation/widgets/app_bar_widget.dart';
import 'package:sizer/sizer.dart';

import '../../core/constants/strings.dart';
import '../../logic/cubit/app_theme_cubit.dart';
import '../utils/app_texts.dart';
import '../widgets/bottom_bar_widget.dart';
import '../widgets/home_tile.dart';
import '../widgets/my_story_tile.dart';
import '../widgets/random_stories_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppThemeCubit, AppThemeState>(
      builder: (context, themeState) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: (themeState as AppThemeSet).themeClass.backgroundColor,
            appBar: AppBarWidget(
              title: Strings.appTitle,
              automaticallyImplyLeading: false,
              centerTitle: false,
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 2.w),
                  child: const Icon(
                      Icons.add_box_outlined
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 2.w, left: 2.w),
                  child: const Icon(
                      Icons.chat_outlined
                  ),
                ),
              ],
            ),
            bottomNavigationBar: const BottomBarWidget(),
            body: SingleChildScrollView(
              child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, i){
                    if(i==0){
                      return
                        SizedBox(
                          width: 80.w,
                          height: 22.w,
                          child: ListView.builder(
                              itemCount: 10,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, j){
                                if(j==0){
                                  ///my story
                                  return const MyStoryTile();
                                }
                                else{
                                  ///random stories
                                  return const RandomStoriesTile();
                                }
                              }
                          ),
                        );
                    }
                    else{
                      return const HomeTile();
                    }
                  }
              ),
            ),
          ),
        );
      },
    );
  }
}


