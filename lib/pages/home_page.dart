import 'package:flutter/material.dart';
import 'package:halotad/service/user_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    UserService userService = UserService();
    return SafeArea(
      child: Scaffold(
        body: IconButton(
            onPressed: () => userService.logout(), icon: Icon(Icons.logout)),
      ),
    );
  }
}
