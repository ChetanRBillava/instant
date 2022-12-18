import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instant/presentation/widgets/app_bar_widget.dart';
import 'package:sizer/sizer.dart';

import '../../core/constants/strings.dart';
import '../../logic/cubit/app_theme_cubit.dart';

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
          ),
        );
      },
    );
  }
}
