import 'package:flutter/material.dart';
import 'package:login_ui/core/reusable_components/custom_material_button.dart';
import 'package:login_ui/features/products_feature/presentation/views/widgets/product_description.dart';
import 'package:login_ui/features/products_feature/presentation/views/widgets/product_image.dart';
import 'package:login_ui/features/products_feature/presentation/views/widgets/product_price.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProductImage(imageUrl: imageUrl),
          const ProductDescription(),
          const ProductPrice(),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            height: 20.0,
            child: CustomMaterialButton(
              onPressed: () {},
              text: "ADD TO CART",
            ),
          )
        ],
      ),
    );
  }
}
