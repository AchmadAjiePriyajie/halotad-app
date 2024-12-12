import 'package:flutter/material.dart';
import 'package:halotad/models/app_user.dart';
import 'package:halotad/pages/chat_page.dart';
import 'package:halotad/service/user_service.dart';

class ListUstadPage extends StatefulWidget {
  final AppUser user;
  ListUstadPage({super.key, required this.user});

  @override
  State<ListUstadPage> createState() => _ListUstadPageState();
}

class _ListUstadPageState extends State<ListUstadPage> {
  final UserService userService = UserService();
  late Future<List<AppUser>> futureUsers;

  @override
  void initState() {
    super.initState();
    futureUsers = userService.getAllUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ustad List'),
      ),
      body: FutureBuilder<List<AppUser>>(
        future: futureUsers,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text('No users found.'),
            );
          } else {
            List<AppUser> users = snapshot.data!;

            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                AppUser user = users[index];
                if (user.uid != widget.user.uid) {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatPage(
                            user: user,
                          ),
                        )),
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.green,
                      ),
                      child: ListTile(
                        leading: const Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        title: Text(
                          user.username,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        subtitle: Text(
                          user.email,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  );
                }
              },
            );
          }
        },
      ),
    );
  }
}
