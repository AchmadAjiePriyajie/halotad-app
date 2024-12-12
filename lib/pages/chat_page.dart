import 'package:flutter/material.dart';
import 'package:halotad/models/app_user.dart';

class ChatPage extends StatelessWidget {
  final AppUser user;
  ChatPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        title: Center(
          child: Text(user.username),
        ),
      ),
    );
  }
}
