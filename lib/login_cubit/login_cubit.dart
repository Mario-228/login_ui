import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(InitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  bool isShown = true;
  IconData passwordIcon = Icons.visibility_off;
  void changeVisibility() {
    isShown = !isShown;
    if (isShown) {
      passwordIcon = Icons.visibility_off;
    } else {
      passwordIcon = Icons.visibility;
    }
    emit(ChangePasswordState());
  }
}
