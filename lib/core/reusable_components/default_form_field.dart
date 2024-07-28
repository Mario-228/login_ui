import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
  final String label;
  final IconData? prefixIcon;
  final TextInputType type;
  final IconData? suffixIcon;
  final void Function()? onPressed;
  final TextEditingController controller;
  final bool isPassword;
  final String onError;
  final bool autofocus;
  final String hintText;
  final bool isEnabled;
  const DefaultFormField(
      {super.key,
      required this.label,
      required this.prefixIcon,
      required this.type,
      this.suffixIcon,
      this.onPressed,
      required this.controller,
      required this.isPassword,
      required this.onError,
      this.autofocus = false,
      this.hintText = "",
      this.isEnabled = true});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus,
      validator: (value) => value!.isEmpty ? onError : null,
      obscureText: isPassword,
      controller: controller,
      keyboardType: type,
      enabled: isEnabled,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding:
            const EdgeInsets.all(15.0), //used to set size for the text field
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.blue),
        ), // used when we want to change the border of the text field when focus on it
        prefixIcon: Icon(prefixIcon), // the package (icons ax)
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        label: Text(label),
        suffixIcon: IconButton(icon: Icon(suffixIcon), onPressed: onPressed),
      ),
    );
  }
}
