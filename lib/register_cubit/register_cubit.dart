import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_ui/register_cubit/register_states.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInitialState());

  static RegisterCubit get(BuildContext context) => BlocProvider.of(context);

  bool isShawn = true;
  IconData passwordIcon = Icons.visibility_off;

  void changeVisibility() {
    isShawn = !isShawn;
    if (isShawn) {
      passwordIcon = Icons.visibility;
    } else {
      passwordIcon = Icons.visibility_off;
    }
    emit(RegisterChangeVisibility());
  }
}
