import 'package:flutter/material.dart';
import 'package:login_ui/features/messenger_feature/presentation/views/widgets/recommanded_chat_item.dart';

class CustomRecommandedListView extends StatelessWidget {
  const CustomRecommandedListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      separatorBuilder: (context, index) => const SizedBox(width: 10.0),
      itemBuilder: (context, index) => const RecommandedChatItem(
        imageUrl: "https://i.pravatar.cc/300",
        isOnline: true,
      ),
    );
  }
}
