import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_ui/core/reusable_components/default_form_field.dart';
import 'package:login_ui/features/login_feature/presentation/views_models/login_cubit/login_cubit.dart';
import 'package:login_ui/features/login_feature/presentation/views_models/login_cubit/login_state.dart';

class LoginFormFieldSection extends StatelessWidget {
  const LoginFormFieldSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController pass = TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultFormField(
          type: TextInputType.text,
          controller: email,
          prefixIcon: Icons.email,
          onError: "Email must not be empty",
          isPassword: false,
          label: "Email",
        ),
        const SizedBox(
          height: 20.0,
        ),
        BlocProvider(
          create: (context) => LoginCubit(),
          child: BlocBuilder<LoginCubit, LoginStates>(
            builder: (context, state) => DefaultFormField(
              type: TextInputType.visiblePassword,
              controller: pass,
              isPassword: LoginCubit.get(context).isShown,
              prefixIcon: Icons.password,
              suffixIcon: LoginCubit.get(context).passwordIcon,
              onError: "Password must not be empty",
              label: "Password",
              onPressed: LoginCubit.get(context).changeVisibility,
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}
