// import 'package:ecommerceapp/presentation/splash/bloc/splash_cubit.dart';
// import 'package:ecommerceapp/presentation/splash/pages/splash.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';



// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => SplashCubit()..appStarted(), 
//       child: MaterialApp(debugShowCheckedModeBanner: false, home: SplashPage()),
//     );
//   }
// }

import 'package:ecommerceapp/presentation/splash/bloc/splash_cubit.dart';
import 'package:ecommerceapp/presentation/splash/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/configs/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..appStarted(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: AppThemes.light,
        darkTheme: AppThemes.dark,
        themeMode: ThemeMode.dark, 
        home: SplashPage(),
      ),
    );
  }
}

