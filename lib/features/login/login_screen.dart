import 'package:edugate/core/app_colors.dart';
import 'package:edugate/core/app_functions.dart';
import 'package:edugate/features/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: context.screenHeight * .05),
              SvgPicture.asset(
                "assets/icons/icon.svg",
                height: 100,
                width: 100,
              ),
              Text(
                "EduGate",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
              SizedBox(height: context.screenHeight * .05),
              Row(children: [Text("Email")]),
              SizedBox(height: 5),
              TextField(
                decoration: InputDecoration(
                  hintText: "",
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: context.screenHeight * .05),
              Row(children: [Text("Password")]),
              SizedBox(height: 5),
              TextField(
                obscureText: true,

                decoration: InputDecoration(
                  hintText: "",
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: context.screenHeight * .05),
              MaterialButton(
                onPressed: () {
                  // Handle login action
                },
                minWidth: context.screenWidth,
                height: 50,
                color: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text("Login", style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 10),
              Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),

                  InkWell(
                    onTap: () {
                      context.goToPage(SignUpScreen());
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
