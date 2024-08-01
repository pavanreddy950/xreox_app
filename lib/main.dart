import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'services/document_service.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DocumentService(),
      child: MaterialApp(
        title: 'Xerox App',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
