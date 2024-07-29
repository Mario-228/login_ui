import 'package:flutter/material.dart';
// import 'package:login_ui/features/login_feature/presentation/views/login.dart';
import 'package:login_ui/features/messenger_feature/presentation/views/messenger_view.dart';
import 'package:login_ui/features/products_feature/presentation/views/product_view.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MessengerView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
