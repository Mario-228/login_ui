import 'package:flutter/material.dart';
import 'package:login_ui/core/styles.dart';

class HeadingLoginView extends StatelessWidget {
  const HeadingLoginView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "LOGIN",
          style: Styles.textStyle40,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          "login now to connect with us",
          style: Styles.textStyle20,
        ),
        SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}
