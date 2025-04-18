import 'package:ecommerceapp/presentation/auth/pages/signin.dart';
import 'package:ecommerceapp/presentation/splash/bloc/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/configs/assets/app_vectors.dart';
import '../../../core/configs/theme/app_colors.dart';
import '../bloc/splash_cubit.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if(state is UnAuthenticated){
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
            builder: (context) =>  SigninPage(),
            )
            );
        }

      },
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body:Center(
          child:Image.asset(AppVectors.appLogo)
      
        )
      ),
    );
  }
}