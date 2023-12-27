import 'package:amazon_clone/constants/global_variable.dart';
import 'package:flutter/material.dart';
import 'package:amazon_clone/router.dart';
import 'features/auth/screens/auth_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Amazone Clone',
        theme: ThemeData(
            scaffoldBackgroundColor: GlobalVariable.backgroundColor,
            colorScheme:
                const ColorScheme.light(primary: GlobalVariable.secondaryColor),
            appBarTheme: const AppBarTheme(
                elevation: 0, iconTheme: IconThemeData(color: Colors.black))),
        onGenerateRoute: (settings) => generateRoute(settings),
        home: AuthScreen());
  }
}
