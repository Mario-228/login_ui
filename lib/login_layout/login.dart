import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_ui/reusable_components/custom_text_button.dart';
import 'package:login_ui/reusable_components/functions.dart';
import 'package:login_ui/reusable_components/reusable_components.dart';
import 'package:login_ui/register_layout/register.dart';
import 'package:login_ui/login_cubit/login_cubit.dart';
import 'package:login_ui/login_cubit/login_state.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    var form = GlobalKey<FormState>();
    TextEditingController email = TextEditingController();
    TextEditingController pass = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Form(
          key: form,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "LOGIN",
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    "login now to connect with us",
                    style: TextStyle(fontSize: 20.0, color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
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
                  MaterialButton(
                    onPressed: () {
                      if (form.currentState!.validate()) {
                        showToast("Thank You ^_^", Colors.green);
                      }
                    },
                    color: Colors.blue[400],
                    minWidth: double.infinity,
                    height: 50.0,
                    child: const Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Forget your password",
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                      ),
                      CustomTextButton(
                        text: "RESET PASSWORD.",
                        onPressed: () => showToast(
                          "Password Is Reseted",
                          Colors.yellow.shade700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't Have An Account?",
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                      ),
                      CustomTextButton(
                        text: "REGISTER NOW.",
                        onPressed: () => navigateTo(
                          context,
                          const Register(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
