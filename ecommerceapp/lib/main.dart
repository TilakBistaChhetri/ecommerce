import 'package:ecommerceapp/presentation/splash/bloc/splash_cubit.dart';
import 'package:ecommerceapp/presentation/splash/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..appStarted(), // ⬅️ call it here
      child: MaterialApp(debugShowCheckedModeBanner: false, home: SplashPage()),
    );
  }
}
