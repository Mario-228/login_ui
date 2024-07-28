import 'package:flutter/material.dart';
import 'package:login_ui/core/reusable_components/default_form_field.dart';
import 'package:login_ui/features/messenger_feature/presentation/views/widgets/custom_chat_list_view.dart';
import 'package:login_ui/features/messenger_feature/presentation/views/widgets/custom_recommanded_list_view.dart';
import 'package:login_ui/features/messenger_feature/presentation/views/widgets/heading_messenger_view.dart';

class MessengerViewBody extends StatelessWidget {
  const MessengerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var searchController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeadingMessengerView(),
          const SizedBox(height: 25.0),
          DefaultFormField(
              label: "search",
              prefixIcon: Icons.search,
              type: TextInputType.text,
              controller: searchController,
              isPassword: false,
              onError: "search must not be empty"),
          const SizedBox(height: 15.0),
          const SizedBox(
            height: 85.0,
            child: CustomRecommandedListView(),
          ),
          const SizedBox(height: 15.0),
          const Expanded(
            child: CustomChatListView(),
          ),
        ],
      ),
    );
  }
}
