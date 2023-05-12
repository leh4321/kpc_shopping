import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kpc_shopping/firebase_options.dart';
import 'package:kpc_shopping/screens/screen_home.dart';
import 'package:kpc_shopping/screens/screen_signin.dart';

import 'screens/screen_signup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      initialRoute: '/signup', // 초기화면은 '/' 이다
      routes: {
        '/': (context) => HomeScreen(),
        '/signup': (context) => SignupScreen(),
        '/signin': (context) => SigninScreen(),
      },
    );

    Navigator.of(context).pushNamed('/');
  }
}
