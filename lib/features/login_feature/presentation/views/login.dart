import 'package:flutter/material.dart';
import 'package:login_ui/features/login_feature/presentation/views/widgets/login_view_body.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const LoginViewBody(),
    );
  }
}
