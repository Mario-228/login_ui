import 'package:flutter/material.dart';
import 'package:login_ui/core/styles.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({
    super.key,
    required this.onPressed,
    required this.text,
  });
  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.blue[400],
      minWidth: double.infinity,
      height: 50.0,
      child: Text(
        text,
        style: Styles.textStyle18.copyWith(color: Colors.white),
      ),
    );
  }
}
