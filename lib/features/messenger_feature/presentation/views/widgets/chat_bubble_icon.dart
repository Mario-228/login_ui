import 'package:flutter/material.dart';

class ChatBubbleIcon extends StatelessWidget {
  const ChatBubbleIcon({
    super.key,
    required this.imageUrl,
    required this.isOnline,
  });

  final String imageUrl;
  final bool isOnline;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          radius: 30.0,
          backgroundImage: NetworkImage(imageUrl),
        ),
        if (isOnline)
          const CircleAvatar(
            radius: 6.0,
            backgroundColor: Colors.green,
          )
      ],
    );
  }
}
