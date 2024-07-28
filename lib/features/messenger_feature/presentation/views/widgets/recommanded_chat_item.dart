import 'package:flutter/material.dart';
import 'package:login_ui/core/styles.dart';
import 'package:login_ui/features/messenger_feature/presentation/views/widgets/chat_bubble_icon.dart';

class RecommandedChatItem extends StatelessWidget {
  const RecommandedChatItem({
    super.key,
    required this.isOnline,
    required this.imageUrl,
  });
  final bool isOnline;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChatBubbleIcon(
          imageUrl: imageUrl,
          isOnline: isOnline,
        ),
        Text(
          "My name",
          style: Styles.textStyle14.copyWith(height: 0.9),
        ),
      ],
    );
  }
}
