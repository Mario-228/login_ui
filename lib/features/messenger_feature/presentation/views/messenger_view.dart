import 'package:flutter/material.dart';
import 'package:login_ui/features/messenger_feature/presentation/views/widgets/messenger_view_body.dart';

class MessengerView extends StatelessWidget {
  const MessengerView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: MessengerViewBody(),
      ),
    );
  }
}
