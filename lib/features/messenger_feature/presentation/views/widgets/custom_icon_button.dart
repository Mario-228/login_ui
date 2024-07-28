import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
  });
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.black,
      radius: 20.0,
      child: IconButton(
        color: Colors.white,
        onPressed: () {},
        icon: Icon(
          icon,
        ),
      ),
    );
  }
}
