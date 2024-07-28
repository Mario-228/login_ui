import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_ui/core/reusable_components/default_form_field.dart';
import 'package:login_ui/features/register_feature/presentation/views_models/register_cubit/register_cubit.dart';
import 'package:login_ui/features/register_feature/presentation/views_models/register_cubit/register_states.dart';

class RegisterFormFields extends StatelessWidget {
  const RegisterFormFields({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultFormField(
          controller: nameController,
          type: TextInputType.name,
          label: "User Name",
          prefixIcon: Icons.person,
          isPassword: false,
          onError: 'User Name Must Not be Empty',
        ),
        const SizedBox(
          height: 20.0,
        ),
        DefaultFormField(
          controller: emailController,
          type: TextInputType.emailAddress,
          label: "Email Address",
          prefixIcon: Icons.email,
          isPassword: false,
          onError: "Email Must Not Be Empty",
        ),
        const SizedBox(
          height: 20.0,
        ),
        BlocProvider(
          create: (context) => RegisterCubit(),
          child: BlocBuilder<RegisterCubit, RegisterStates>(
            builder: (context, state) => DefaultFormField(
              controller: passController,
              isPassword: RegisterCubit.get(context).isShawn,
              onError: "Password Must Not Be Empty",
              type: TextInputType.visiblePassword,
              label: "Password",
              prefixIcon: (Icons.lock_outline),
              suffixIcon: RegisterCubit.get(context).passwordIcon,
              onPressed: RegisterCubit.get(context).changeVisibility,
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        DefaultFormField(
          controller: phoneController,
          onError: "Phone Number Must Not Be Empty",
          isPassword: false,
          type: TextInputType.phone,
          label: "Phone Number",
          prefixIcon: Icons.phone,
        ),
      ],
    );
  }
}
