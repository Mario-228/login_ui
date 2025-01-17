import 'package:flutter/material.dart';
import 'package:login_ui/features/products_feature/presentation/views/widgets/product_view_body.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ProductViewBody()),
    );
  }
}
