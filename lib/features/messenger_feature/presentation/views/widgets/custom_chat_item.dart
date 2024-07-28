import 'package:flutter/material.dart';
import 'package:login_ui/core/styles.dart';
import 'package:login_ui/features/messenger_feature/presentation/views/widgets/chat_bubble_icon.dart';

class CustomChatItem extends StatelessWidget {
  const CustomChatItem({
    super.key,
    required this.isOnline,
    required this.imageUrl,
  });
  final bool isOnline;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ChatBubbleIcon(imageUrl: imageUrl, isOnline: isOnline),
        const SizedBox(width: 15.0),
        SizedBox(
          height: 50.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "My name",
                style: Styles.textStyle16,
              ),
              const Spacer(),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.35,
                child: const Row(
                  children: [
                    Text(
                      "hello world!",
                      style: Styles.textStyle14,
                    ),
                    Spacer(),
                    CircleAvatar(
                      radius: 5.0,
                      backgroundColor: Colors.blue,
                    ),
                    SizedBox(width: 5.0),
                    Text("6:30 pm", style: Styles.textStyle14),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
