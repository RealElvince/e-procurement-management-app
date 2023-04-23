import 'package:flutter/material.dart';

class PasswordVisibleIcon extends StatefulWidget {
  const PasswordVisibleIcon({super.key});

  @override
  State<PasswordVisibleIcon> createState() => _PasswordVisibleIconState();
}

class _PasswordVisibleIconState extends State<PasswordVisibleIcon> {
  bool passwordVisible = false;

  // Password Visible Function
  void passwordFunction() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: passwordFunction,
      icon: Icon(passwordVisible ? Icons.visibility_off : Icons.visibility,
          color: Colors.black),
    );
  }
}
