import 'package:flutter/material.dart';
import 'package:xeroxx_app/screens/home_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          // Implement logout functionality or reset the app state
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
        child: const Text('Logout'),
      ),
    );
  }
}
