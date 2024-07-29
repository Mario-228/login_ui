import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Image(
          width: 150.0,
          height: 150.0,
          image: NetworkImage(imageUrl),
          fit: BoxFit.fill,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite_rounded,
            color: Colors.red,
          ),
        )
      ],
    );
  }
}
