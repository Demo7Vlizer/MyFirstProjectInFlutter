import 'package:flutter/material.dart';
import 'routes.dart'; // Import the routes file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: Routes.login, // Set the initial route
      onGenerateRoute: Routes.generateRoute, // Use the route generator
    );
  }
}
