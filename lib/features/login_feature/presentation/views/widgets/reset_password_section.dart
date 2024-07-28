import 'package:flutter/material.dart';
import 'package:login_ui/core/styles.dart';
import 'package:login_ui/core/reusable_components/custom_text_button.dart';
import 'package:login_ui/core/reusable_components/functions.dart';

class ResetPasswordSection extends StatelessWidget {
  const ResetPasswordSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Forget your password",
          style: Styles.textStyle18,
        ),
        CustomTextButton(
          text: "RESET PASSWORD.",
          onPressed: () => showToast(
            "Password Is Reseted",
            Colors.yellow.shade700,
          ),
        ),
      ],
    );
  }
}
