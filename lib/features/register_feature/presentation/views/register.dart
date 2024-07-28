import 'package:flutter/material.dart';
import 'package:login_ui/features/register_feature/presentation/views/widgets/register_view_body.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const RegisterViewBody(),
    );
  }
}
