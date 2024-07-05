import 'package:flutter/material.dart';
import 'package:flutter_balcoder_firstapp/ui/home/home_page.dart';
import 'package:flutter_balcoder_firstapp/ui/login/login_page.dart';
import 'package:flutter_balcoder_firstapp/ui/register/register_page.dart';
import 'package:flutter_balcoder_firstapp/utils/routes/app_routes.dart'; // Asegúrate de tener definido AppRoutes

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (context) => const MyHomePage(),
        AppRoutes.login: (context) => const LoginPage(),
        AppRoutes.register: (context) => const RegisterPage(),
      },
    );
  }
}
