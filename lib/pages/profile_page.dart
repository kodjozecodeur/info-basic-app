import 'package:flutter/material.dart';
import 'package:travel_app/core/constants.dart';
import 'package:travel_app/core/notifier.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Column(
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/images/yeah.png'),
          ),
          SizedBox(
            height: kDouble20,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Travel App'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('enrolment@jointhedarkside.com'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('X.com'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            isDarkModeNotifier.value = !isDarkModeNotifier.value;
          },
          child: ValueListenableBuilder(
            valueListenable: isDarkModeNotifier,
            builder: (context, isDark, child) {
              if (!isDark) {
                return const Icon(Icons.dark_mode);
              } else {
                return const Icon(Icons.light_mode);
              }
            },
          )),
    );
  }
}
