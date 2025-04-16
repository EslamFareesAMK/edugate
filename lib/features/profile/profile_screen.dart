import 'package:edugate/features/login/cubit/login_cubit.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: Text("Name"),
                subtitle: Text(LoginCubit.get(context).userData["name"]),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Email"),
                subtitle: Text(LoginCubit.get(context).userData["email"]),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Gender"),
                subtitle: Text(LoginCubit.get(context).userData["gender"]),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Nationality"),
                subtitle: Text(LoginCubit.get(context).userData["nationality"]),
              ),
            ),

            Card(
              child: ListTile(
                title: Text("Phone"),
                subtitle: Text(LoginCubit.get(context).userData["phone"]),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Date of birth"),
                subtitle: Text(LoginCubit.get(context).userData["dateOfBirth"]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
