import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  bool _isSigningIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signin Screen'),
      ),
      body: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
    children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            _isSigningUp
                ? LinearProgressIndicator()
                : Padding(padding: EdgeInsets.all(3)),

    ],

    );
  }
}
