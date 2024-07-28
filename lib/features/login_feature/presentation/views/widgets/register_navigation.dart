import 'package:flutter/material.dart';
import 'package:login_ui/core/styles.dart';
import 'package:login_ui/features/register_feature/presentation/views/register.dart';
import 'package:login_ui/core/reusable_components/custom_text_button.dart';
import 'package:login_ui/core/reusable_components/functions.dart';

class RegisterNavigation extends StatelessWidget {
  const RegisterNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't Have An Account?",
          style: Styles.textStyle18,
        ),
        CustomTextButton(
          text: "REGISTER NOW.",
          onPressed: () => navigateTo(
            context,
            const Register(),
          ),
        ),
      ],
    );
  }
}
