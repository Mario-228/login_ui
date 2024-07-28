import 'package:flutter/material.dart';
import 'package:login_ui/core/reusable_components/custom_material_button.dart';
import 'package:login_ui/core/reusable_components/functions.dart';
import 'package:login_ui/features/register_feature/presentation/views/widgets/register_form_fields.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Center(
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
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
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
                const RegisterFormFields(),
                const SizedBox(
                  height: 20.0,
                ),
                CustomMaterialButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      showToast("Thank You ^_^", Colors.green);
                      // navigateTo(context, const _());
                    }
                  },
                  text: "SIGN UP",
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
