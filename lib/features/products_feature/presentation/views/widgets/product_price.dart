import 'package:flutter/material.dart';
import 'package:login_ui/core/styles.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        width: double.infinity,
        child: Text(
          "EGP 100.00",
          style: Styles.textStyle16,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
