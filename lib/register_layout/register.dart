import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_ui/reusable_components/functions.dart';
import 'package:login_ui/reusable_components/reusable_components.dart';
import 'package:login_ui/social_register_cubit/register_cubit.dart';
import 'package:login_ui/social_register_cubit/register_states.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "REGISTER",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 24.0),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      "Register To connect with us",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
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
                          onPressed:
                              RegisterCubit.get(context).changeVisibility,
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
                    const SizedBox(
                      height: 20.0,
                    ),
                    MaterialButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          showToast("Thank You ^_^", Colors.green);
                        }
                      },
                      color: Colors.blue[400],
                      minWidth: double.infinity,
                      height: 50.0,
                      child: const Text(
                        "SIGN IN",
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
