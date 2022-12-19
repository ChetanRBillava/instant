import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/cubit/app_theme_cubit.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppThemeCubit, AppThemeState>(
      builder: (context, themeState) {
        return BottomNavigationBar(
          selectedFontSize: 0,
          currentIndex: 2,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: (themeState as AppThemeSet).themeClass.textColor_1,
                ),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: (themeState).themeClass.textColor_1,
                ),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_box_outlined,
                  color: (themeState).themeClass.textColor_1,
                ),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                  color: (themeState).themeClass.textColor_1,
                ),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle_outlined,
                  color: (themeState).themeClass.textColor_1,
                ),
              label: '',

            ),
          ],
        );
      },
    );
  }
}