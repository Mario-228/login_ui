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
          backgroundImage: NetworkImage(
              "https://img.freepik.com/free-vector/mysterious-gangster-character-illustration_23-2148460670.jpg?t=st=1722185763~exp=1722189363~hmac=2a44d45d38eca3cd3aca7a2f82b32a0eae96b90039f1fce60b0dcd15cb0cd7fb&w=740"),
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
