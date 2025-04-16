import 'package:edugate/core/app_colors.dart';
import 'package:edugate/core/app_functions.dart';

import 'package:edugate/features/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      if (context.mounted) {
        context.goOffAll(LoginScreen());
      }
    });

    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/icons/icon.svg",
              height: 100,
              width: 100,
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
            Text(
              "EduGate",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
