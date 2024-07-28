import 'package:flutter/material.dart';
import 'package:login_ui/core/reusable_components/custom_material_button.dart';
import 'package:login_ui/features/login_feature/presentation/views/widgets/heading_login_view.dart';
import 'package:login_ui/features/login_feature/presentation/views/widgets/login_form_field_section.dart';
import 'package:login_ui/features/login_feature/presentation/views/widgets/register_navigation.dart';
import 'package:login_ui/features/login_feature/presentation/views/widgets/reset_password_section.dart';
import 'package:login_ui/core/reusable_components/functions.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var form = GlobalKey<FormState>();
    return Center(
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
                const HeadingLoginView(),
                const LoginFormFieldSection(),
                CustomMaterialButton(
                  onPressed: () {
                    if (form.currentState!.validate()) {
                      showToast("Thank You ^_^", Colors.green);
                      // navigateTo(context, const _);
                    }
                  },
                  text: "LOGIN",
                ),
                const SizedBox(height: 20.0),
                const ResetPasswordSection(),
                const SizedBox(height: 20.0),
                const RegisterNavigation(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
