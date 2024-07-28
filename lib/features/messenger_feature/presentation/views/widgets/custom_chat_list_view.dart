import 'package:flutter/material.dart';
import 'package:login_ui/features/messenger_feature/presentation/views/widgets/custom_chat_item.dart';

class CustomChatListView extends StatelessWidget {
  const CustomChatListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemCount: 10,
      separatorBuilder: (context, index) => const SizedBox(height: 10.0),
      itemBuilder: (context, index) => const CustomChatItem(
        isOnline: true,
        imageUrl: "https://i.pravatar.cc/300",
      ),
    );
  }
}
