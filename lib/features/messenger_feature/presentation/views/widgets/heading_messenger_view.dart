import 'package:flutter/material.dart';
import 'package:login_ui/core/styles.dart';
import 'package:login_ui/features/messenger_feature/presentation/views/widgets/custom_icon_button.dart';

class HeadingMessengerView extends StatelessWidget {
  const HeadingMessengerView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          radius: 20.0,
          backgroundImage: NetworkImage("https://i.pravatar.cc/300"),
        ),
        SizedBox(
          width: 15.0,
        ),
        Text(
          "Chats",
          style: Styles.textStyle30,
        ),
        Spacer(),
        CustomIconButton(icon: Icons.camera_alt_outlined),
        SizedBox(width: 15.0),
        CustomIconButton(icon: Icons.edit),
      ],
    );
  }
}
