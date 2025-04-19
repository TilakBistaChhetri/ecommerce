import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.symmetric(
          horizontal:16,
          vertical:80,
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signinText(context),
            SizedBox(height:20),
            _emailField(context),
              SizedBox(height:20),
            _createAccount(context)
          ],
        )
      )
    );
  }


  Widget _signinText(BuildContext context) {
  return const Text(
    'Sign in',
    style:TextStyle(fontSize:32,
    fontWeight:FontWeight.bold)
  );
}

  Widget _emailField(BuildContext context) {
  return TextField(
    decoration: InputDecoration(
      hintText:"Enter Email"

    ),

  );
}


//   Widget _continueButton(BuildContext context) {
//   return BasicAppButton(onPressed: onPressed, title:)
// }

  Widget _createAccount(BuildContext context) {
    return RichText(
      text:TextSpan(
        children: [
          TextSpan(
            text:"Don't you have an account?", //style:TextStyle(color:Colors.black)
          ),
            TextSpan(
            text:'Create one', style:TextStyle(fontWeight:FontWeight.bold)
          )
        ]
      ) );
}




}

