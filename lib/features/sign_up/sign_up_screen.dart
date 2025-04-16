import 'package:edugate/core/app_colors.dart';
import 'package:edugate/core/app_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final dateOfBirthController = TextEditingController();
  final nationalityController = TextEditingController();
  final mobileNumberController = TextEditingController();
  String? gender;

  void _selectDate(context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      dateOfBirthController.text =
          "${picked.day.toString().padLeft(2, '0')}/"
          "${picked.month.toString().padLeft(2, '0')}/"
          "${picked.year}";
    }
  }

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

              //! ------------------- Full Name ------------------!
              Row(children: [Text("Full Name")]),
              SizedBox(height: 5),
              TextField(
                controller: nameController,
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
              SizedBox(height: 15),

              //! ------------------- Email ------------------!
              Row(children: [Text("Email")]),
              SizedBox(height: 5),
              TextField(
                controller: emailController,
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
              SizedBox(height: 15),

              //! ------------------- Date of birth ------------------!
              Row(children: [Text("Date of Birth")]),
              SizedBox(height: 5),
              TextField(
                controller: dateOfBirthController,
                readOnly: true,
                onTap: () {
                  _selectDate(context);
                },
                decoration: InputDecoration(
                  hintText: "DD/MM/YYYY",
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 15),

              //! ------------------- Mobile Number ------------------!
              Row(children: [Text("Mobile Number")]),
              SizedBox(height: 5),
              TextField(
                controller: mobileNumberController,
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
              SizedBox(height: 15),

              //! ------------------- Nationality ------------------!
              Row(children: [Text("Nationality")]),
              SizedBox(height: 5),
              TextField(
                controller: nationalityController,
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
              SizedBox(height: 15),

              //! ------------------- Gender ------------------!
              Row(children: [Text("Gender")]),
              SizedBox(height: 5),
              DropdownButtonFormField<String>(
                value: gender,
                hint: Text("Select Gender"),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
                items:
                    ['Male', 'Female'].map((gender) {
                      return DropdownMenuItem<String>(
                        value: gender,
                        child: Text(gender),
                      );
                    }).toList(),
                onChanged: (value) {
                  gender = value;
                },
              ),
              SizedBox(height: 15),

              //! ------------------- Password ------------------!
              Row(children: [Text("Password")]),
              SizedBox(height: 5),
              TextField(
                controller: passwordController,
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

              //! ------------------- Sign Up Button ------------------!
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
                child: Text(
                  "Create Account",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
