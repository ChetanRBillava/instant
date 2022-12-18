import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instant/presentation/router/app_router.dart';
import 'package:sizer/sizer.dart';

import 'core/constants/strings.dart';
import 'logic/cubit/app_theme_cubit.dart';
import 'presentation/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bool setColor = false;

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppThemeCubit(),
        ),
      ],
      child: Sizer(builder: (context, constraints, orientation) {
        if (!setColor) {
          BlocProvider.of<AppThemeCubit>(context).setLightTheme();
          setColor = true;
        }
        return const MaterialApp(
          title: Strings.appTitle,
          debugShowCheckedModeBanner: false,
          initialRoute: AppRouter.splash,
          onGenerateRoute: AppRouter.onGenerateRoute,
        );
      }),
    );
  }
}
