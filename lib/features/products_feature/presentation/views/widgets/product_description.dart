import 'package:flutter/material.dart';
import 'package:login_ui/core/styles.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        width: double.infinity,
        child: Text(
          "lorem ipsum lorem ipsum lorem ipsum lorem",
          textAlign: TextAlign.start,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle14,
        ),
      ),
    );
  }
}
